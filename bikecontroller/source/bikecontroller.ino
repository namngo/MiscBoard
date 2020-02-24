#include "Arduino.h"

#define Threshold 40 /* Greater the value, more the sensitivity */
int LED_BUILTIN = 2;
RTC_DATA_ATTR int bootCount = 0;
touch_pad_t touchPin;

void callback(){
  //placeholder callback function
}

void setup()
{
  Serial.begin(115200);
  delay(1000); //Take some time to open up the Serial Monitor
  ++bootCount;
  Serial.println("Boot number: " + String(bootCount));
  touchAttachInterrupt(T3, callback, Threshold);

  esp_sleep_enable_touchpad_wakeup();
  //Go to sleep now
  if (bootCount == 1) {
    Serial.println("Going to sleep now");
    delay(1000);
    esp_deep_sleep_start();
  }

  pinMode (LED_BUILTIN, OUTPUT);
}

void loop()
{
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
