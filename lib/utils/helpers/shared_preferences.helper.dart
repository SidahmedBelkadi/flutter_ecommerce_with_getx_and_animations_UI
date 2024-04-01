import 'package:ecommmerce/utils/core/services/init.service.dart';

abstract class AppSharedPreferences {
  static void setString(String key, String value) {
    InitialService.instance.sharedPreferences.setString(key, value);
  }

  static String? getString(String key) {
    return InitialService.instance.sharedPreferences.getString(key);
  }

  static void setInt(String key, int value) {
    InitialService.instance.sharedPreferences.setInt(key, value);
  }

  static int? getInt(String key) {
    return InitialService.instance.sharedPreferences.getInt(key);
  }

  static void setBool(String key, bool value) {
    InitialService.instance.sharedPreferences.setBool(key, value);
  }

  static bool? getBool(String key) {
    return InitialService.instance.sharedPreferences.getBool(key);
  }
}
