#include <AdafruitIO.h>
#include <AdafruitIO_Dashboard.h>
#include <AdafruitIO_Data.h>
#include <AdafruitIO_Definitions.h>
#include <AdafruitIO_Feed.h>
#include <AdafruitIO_Group.h>
#include <AdafruitIO_MQTT.h>
#include <AdafruitIO_Time.h>
#include <AdafruitIO_WiFi.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>
#include <ArduinoHttpClient.h>
#include <DHT.h>
#include <HttpClient.h>
#include <Preferences.h>
#include <URLEncoder.h>
#include <WebSocketClient.h>
#include <b64.h>

#include <string>

#include "SPIFFS.h"
#include "esp_setting.h"

using namespace TempLogger;

#define DHTPIN 23
#define DHTTYPE DHT22
#define uS_TO_S_FACTOR 1000000
#define TIME_TO_SLEEP 30
#define CON_RETRY_MAX 100

DHT dht_(DHTPIN, DHTTYPE);

std::unique_ptr<AdafruitIO_WiFi> io;

AdafruitIO_Feed *temp_c_feed;
AdafruitIO_Feed *temp_f_feed;
AdafruitIO_Feed *humidity_feed;

EspSetting &esp_setting = EspSetting::get();

float readHumidity() {
  auto hum = dht_.readHumidity();
  if (isnan(hum)) {
    return 0;
  }
  return hum;
}

float readTemperature(bool fahrenheit = true) {
  auto temp = dht_.readTemperature(fahrenheit);
  if (isnan(temp)) {
    return 0;
  }
  return temp;
}

String readFile(String filename) {
  if (!SPIFFS.begin(true)) {
    Serial.println("An Error has occurred while mounting SPIFFS");
    return "";
  }
  auto file = SPIFFS.open(filename);
  if (!file) {
    Serial.println("Failed to open file for reading");
    return "";
  }
  return file.readString();
}

void setupSecrets() {
  // uncomment to setup secrets
  // do not check in secrets!

  // esp_setting.SetKey(esp_setting.UserNameKey, "");
  // esp_setting.SetKey(esp_setting.ServiceKey, "");
  // esp_setting.SetKey(esp_setting.WifiSSIDKey, "");
  // esp_setting.SetKey(esp_setting.WifiPassKey, "");
}

void logData() {
  Serial.println("logging data...");
  io->run();

  Serial.println(readTemperature());
  auto c_temp = readTemperature(false);
  if (c_temp > 0) {
    temp_c_feed->save(c_temp);
  }

  auto f_temp = readTemperature(true);
  if (f_temp > 0) {
    temp_f_feed->save(f_temp);
  }

  auto humidity = readHumidity();
  if (humidity > 0) {
    humidity_feed->save(humidity);
  }
}

void goSleep() {
  Serial.println("going to sleep");

  delay(1000);
  Serial.flush();
  esp_deep_sleep_start();
}

void setup() {
  Serial.begin(115200);
  Serial.println("waking up...");

  dht_.begin();

  setupSecrets();

  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);

  auto username = esp_setting.GetKey(esp_setting.UserNameKey);
  auto key = esp_setting.GetKey(esp_setting.ServiceKey);
  auto wifi_ssid = esp_setting.GetKey(esp_setting.WifiSSIDKey);
  auto wifi_pass = esp_setting.GetKey(esp_setting.WifiPassKey);

  io = std::make_unique<AdafruitIO_WiFi>(username.c_str(), key.c_str(),
                                         wifi_ssid.c_str(), wifi_pass.c_str());
  temp_c_feed = io->feed("Temperature C");
  temp_f_feed = io->feed("Temperature F");
  humidity_feed = io->feed("Humidity");

  io->connect();

  int retry_count = 0;
  while (io->status() < AIO_CONNECTED) {
    Serial.print(".");
    Serial.println(io->statusText());
    delay(500);
    retry_count++;
    if (retry_count > CON_RETRY_MAX) {
      Serial.println("max retry reached. Will go to sleep");
      goSleep();
    }
  }
  Serial.println(io->statusText());

  logData();
  goSleep();
}

void loop() {
  // will not called after sleep
}
