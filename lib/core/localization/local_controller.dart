import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawermer/core/services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  AppServices appServices = Get.put(AppServices());
  bool iseng = true;
  changeLanguage(String codelang) {
    Locale locale = Locale(codelang);
    appServices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflanguage =
        appServices.sharedPreferences.getString("lang");
    if (sharedpreflanguage == "en") {
      language = const Locale("en");
    } else if (sharedpreflanguage == "ar") {
      language = const Locale("ar");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appServices.sharedPreferences
          .setString("lang", Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
