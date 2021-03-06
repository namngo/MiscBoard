#include <Adafruit_BME280.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>
#include <gfxfont.h>
#include <splash.h>

#include <sstream>
#include <string>

#define uS_TO_S_FACTOR \
  1000000                // Conversion factor for micro seconds to
                         // seconds
#define TIME_TO_SLEEP 5  // Time ESP32 will go to sleep (in seconds)

// #define OLED_ADDR 0x3D  // Address 0x3D for 128x64
#define OLED_ADDR 0x3C  // Address 0x3D for 128x32

#define OLED_SDA 4
#define OLED_SCL 15
#define OLED_RST 16

#define SCREEN_WIDTH 128  // OLED display width, in pixels
#define SCREEN_HEIGHT 32  // OLED display height, in pixels

#define BME280_ADDR 0x76  // or 0x77
#define SEALEVELPRESSURE_HPA (1013.25)
#define BME_SDA 21
#define BME_SCL 22

Adafruit_BME280 bme;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RST);

String last_ip;

void displayInfo(float temp, float hum, float pressure, float altitude) {
  display.clearDisplay();
  display.setTextColor(WHITE, BLACK);
  display.setTextSize(1);
  display.setCursor(0, 0);

  std::stringstream ss;
  ss.precision(1);
  ss << std::fixed << "T= " << temp << "c  |  " << ((temp * 9 / 5) + 32) << "f"
     << std::endl;
  ss << "H=" << hum << "% "
     << "Alt=" << altitude << "m" << std::endl
     << "P=" << pressure << "hPa" << std::endl;

  display.print(ss.str().c_str());
  display.display();
}

std::string getJson(float temp, float hum, float pressure, float altitude,
                    std::string text) {
  std::stringstream ss;
  ss.precision(1);
  ss << std::fixed << "{\"temp:\":\"" << temp << "\", \"humidity\":\"" << hum
     << "\", \"pressure\":\"" << pressure << "\", \"altitude\":\"" << altitude
     << "\", \"ip\":\"" << text << "\"}";
  return ss.str();
}

std::string requestIp() {
  Serial.println("request_ip");
  int count = 0;
  while (!Serial.available()) {
    count++;
    if (count == 20) {
      return "";
    }
    delay(500);
  }
  String str = last_ip;
  while (Serial.available()) {
    str = Serial.readString();
  }
  str.trim();
  if (str != "") {
    last_ip = str;
  }
  std::string ip(str.c_str());
  return ip;
}

void doWork() {
  // auto ip = requestIp();
  auto temp = bme.readTemperature();
  auto hum = bme.readHumidity();
  auto pressure = bme.readPressure();
  auto altitude = bme.readAltitude(SEALEVELPRESSURE_HPA);

  displayInfo(temp, hum, pressure, altitude);

  // auto json = getJson(temp, hum, pressure, altitude, ip);
  // Serial.println(json.c_str());
}

void setup() {
  Serial.begin(115200);
  delay(1000);
  Serial.println("init");

  Wire.begin(OLED_SDA, OLED_SCL);
  // display.begin()
  if (!display.begin(SSD1306_SWITCHCAPVCC, OLED_ADDR)) {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;)
      ;  // Don't proceed, loop forever
  }
  display.clearDisplay();
  display.setRotation(2);

  Wire1.begin(BME_SDA, BME_SCL);
  if (!bme.begin(BME280_ADDR, &Wire1)) {
    Serial.println(
        "Could not find a valid BME280 sensor, check wiring, address, sensor "
        "ID!");
    Serial.print("SensorID was: 0x");
    Serial.println(bme.sensorID(), 16);
    Serial.print(
        "        ID of 0xFF probably means a bad address, a BMP 180 or BMP "
        "085\n");
    Serial.print("   ID of 0x56-0x58 represents a BMP 280,\n");
    Serial.print("        ID of 0x60 represents a BME 280.\n");
    Serial.print("        ID of 0x61 represents a BME 680.\n");
    while (1) delay(10);
  }
  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);
}

void loop() {
  Serial.println("waking");
  doWork();
  Serial.flush();
  esp_light_sleep_start();
}
