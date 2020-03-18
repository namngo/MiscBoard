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

#define DHTPIN 23
#define DHTTYPE DHT22

DHT dht_(DHTPIN, DHTTYPE);

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

void setup()
{
  Serial.begin(115200);
  dht_.begin();
}

void loop()
{
  Serial.println(readTemperature());
  delay(1000);
}
