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

#define DHTPIN 23
#define DHTTYPE DHT22

DHT dht_(DHTPIN, DHTTYPE);

Preferences preferences;

std::unique_ptr<AdafruitIO_WiFi> io; //(IO_USERNAME, IO_KEY, WIFI_SSID, WIFI_PASS);

AdafruitIO_Feed *temp_c_feed; // = io.feed("counter");
AdafruitIO_Feed *temp_f_feed;
AdafruitIO_Feed *humidity_feed;

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
  // preferences.putString("IO_USERNAME", "");
  // preferences.putString("IO_KEY", "");
  // preferences.putString("WIFI_SSID", "");
  // preferences.putString("WIFI_PASS", "");
}

void setup()
{
  Serial.begin(115200);
  dht_.begin();
  auto secret = readFile("/secret.txt");
  Serial.println(secret);
  preferences.begin("temp_logger", false);
  setupSecret();

  auto username = preferences.getString("IO_USERNAME").c_str();
  auto key = preferences.getString("IO_KEY").c_str();
  auto wifi_ssid = preferences.getString("WIFI_SSID").c_str();
  auto wifi_pass = preferences.getString("WIFI_PASS").c_str();

  //AdafruitIO_WiFi io1(username, key, wifi_ssid, wifi_pass);
  io = std::make_unique<AdafruitIO_WiFi>(username, key, wifi_ssid, wifi_pass);
  temp_c_feed = io->feed("temp_c");
  temp_f_feed = io->feed("temp_c");
  humidity_feed = io->feed("temp_c");

  while (io->status() < AIO_CONNECTED)
  {
    Serial.print(".");
    delay(500);
  }

  Serial.println();
  Serial.println(io->statusText());
}

void loop()
{
  Serial.println(readTemperature());
  delay(1000);
}
