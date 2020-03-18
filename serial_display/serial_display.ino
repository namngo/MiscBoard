
#include <Adafruit_GFX.h>
#include <Adafruit_SPITFT.h>
#include <Adafruit_SPITFT_Macros.h>
#include <Adafruit_SSD1306.h>
#include <Wire.h>
#include <gfxfont.h>
#include <splash.h>

// #define OLED_ADDR 0x3D  // Address 0x3D for 128x64
#define OLED_ADDR 0x3C  // Address 0x3D for 128x32

#define OLED_SDA 4
#define OLED_SCL 15
#define OLED_RST 16

#define SCREEN_WIDTH 128  // OLED display width, in pixels
#define SCREEN_HEIGHT 32  // OLED display height, in pixels

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RST);

void displayText(String text) {
  display.clearDisplay();
  display.setTextColor(WHITE);
  display.setTextSize(1);
  display.setCursor(0, 0);
  display.print(text);
  display.display();
}

void setup() {
  Serial.begin(115200);
  delay(1000);
  Serial.println("init");

  Wire.begin(OLED_SDA, OLED_SCL);

  if (!display.begin(SSD1306_SWITCHCAPVCC, OLED_ADDR)) {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;)
      ;  // Don't proceed, loop forever
  }

  displayText("NamNgo1");
}

void loop() {
  while (Serial.available()) {
    auto str = Serial.readString();
    Serial.println("Got text: " + str);
    displayText(str);
  }
}
