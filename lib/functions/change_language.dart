import 'package:flutter/material.dart';

bool isEnglish = true;
var appLan = Locale("en");
void changeLan() {
  if (appLan == Locale("en")) {
    appLan = Locale("ar");
    isEnglish = false;
  } else {
    appLan = Locale("en");
    isEnglish = true;
  }
}
