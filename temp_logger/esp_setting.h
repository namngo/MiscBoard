#ifndef ESPSETTING
#define ESPSETTING

#include <Preferences.h>
#include "Arduino.h"

#define SETTING_APP_NAME "temp_logger"

namespace TempLogger
{

class EspSetting
{
public:
  const String UserNameKey = "IO_USERNAME";
  const String ServiceKey = "IO_KEY";
  const String WifiSSIDKey = "WIFI_SSID";
  const String WifiPassKey = "WIFI_PASS";

  static EspSetting &get()
  {
    static EspSetting instance_;
    return instance_;
  }

  void operator=(EspSetting const &) = delete;
  EspSetting(EspSetting const &) = delete;

  String GetKey(const String &key, String defaultValue = String())
  {
    Preferences p_;
    p_.begin(SETTING_APP_NAME, true);
    const auto ret = p_.getString(key.c_str());
    p_.end();
    return ret;
  }

  void SetKey(const String &key, const String &value)
  {
    Preferences p_;
    p_.begin(SETTING_APP_NAME, false);
    const auto ret = p_.putString(key.c_str(), value);
    p_.end();
  }

private:
  EspSetting() {}
};

} // namespace TempLogger

#endif