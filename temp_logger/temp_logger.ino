#include <AdafruitIO_Dashboard.h>
#include <AdafruitIO_Data.h>
#include <AdafruitIO_Definitions.h>
#include <AdafruitIO_Feed.h>
#include <AdafruitIO_Group.h>
#include <AdafruitIO_MQTT.h>
#include <AdafruitIO_Time.h>
#include <AdafruitIO_WiFi.h>
#include <AdafruitIO.h>

#include <ArduinoHttpClient.h>
#include <b64.h>
#include <HttpClient.h>
#include <URLEncoder.h>
#include <WebSocketClient.h>

#include <Adafruit_MQTT_Client.h>
#include <Adafruit_MQTT.h>

#include <DHT.h>
#include <string>
#include <Preferences.h>
#include "SPIFFS.h"
#include "esp_setting.h"

using namespace TempLogger;

#define DHTPIN 23
#define DHTTYPE DHT22

DHT dht_(DHTPIN, DHTTYPE);

std::unique_ptr<AdafruitIO_WiFi> io; //(IO_USERNAME, IO_KEY, WIFI_SSID, WIFI_PASS);

AdafruitIO_Feed *temp_c_feed; // = io.feed("counter");
AdafruitIO_Feed *temp_f_feed;
AdafruitIO_Feed *humidity_feed;

EspSetting &esp_setting = EspSetting::get();

float readHumidity()
{
  auto hum = dht_.readHumidity();
  if (isnan(hum))
  {
    return 0;
  }
  return hum;
}

float readTemperature(bool fahrenheit = true)
{
  auto temp = dht_.readTemperature(fahrenheit);
  if (isnan(temp))
  {
    return 0;
  }
  return temp;
}

String readFile(String filename)
{
  if (!SPIFFS.begin(true))
  {
    Serial.println("An Error has occurred while mounting SPIFFS");
    return "";
  }
  auto file = SPIFFS.open(filename);
  if (!file)
  {
    Serial.println("Failed to open file for reading");
    return "";
  }
  return file.readString();
}

void setupSecret()
{
  // uncomment to setup secrets
  // do not check in secrets!

  esp_setting.SetKey(esp_setting.UserNameKey, "namngo");
  esp_setting.SetKey(esp_setting.ServiceKey, "aio_yuwK42hM1zBZ3DJpkwCCBHHkYhSV");
  esp_setting.SetKey(esp_setting.WifiSSIDKey, "DeceptionPass");
  //esp_setting.SetKey(esp_setting.WifiPassKey, "iotdevices");

  // preferences.putString("IO_USERNAME", "");
  // preferences.putString("IO_KEY", "");

  // preferences.putString("WIFI_PASS", "");
}

void setup()
{
  Serial.begin(115200);
  dht_.begin();

  setupSecret();

  auto username = esp_setting.GetKey(esp_setting.UserNameKey);
  auto key = esp_setting.GetKey(esp_setting.ServiceKey);
  auto wifi_ssid = esp_setting.GetKey(esp_setting.WifiSSIDKey);
  auto wifi_pass = esp_setting.GetKey(esp_setting.WifiPassKey);

  io = std::make_unique<AdafruitIO_WiFi>(username.c_str(), key.c_str(), wifi_ssid.c_str(), wifi_pass.c_str());
  temp_c_feed = io->feed("Temperature C");
  temp_f_feed = io->feed("Temperature F");
  humidity_feed = io->feed("Humidity");

  io->connect();

  while (io->status() < AIO_CONNECTED)
  {
    Serial.print(".");
    delay(500);
  }

  Serial.println(io->statusText());
}

void loop()
{
  io->run();

  Serial.println(readTemperature());
  auto c_temp = readTemperature(false);
  if (c_temp > 0)
  {
    temp_c_feed->save(c_temp);
  }

  auto f_temp = readTemperature(true);
  if (f_temp > 0)
  {
    temp_f_feed->save(f_temp);
  }

  auto humidity = readHumidity();
  if (humidity > 0)
  {
    humidity_feed->save(humidity);
  }

  delay(10000);
}
