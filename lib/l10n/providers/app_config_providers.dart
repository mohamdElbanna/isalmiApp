// l10n/providers/app_config_providers.dart
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = "en";

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}
