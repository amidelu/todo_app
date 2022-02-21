import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _getStorage = GetStorage();
  final storageKey = 'isLightMode';

  ThemeMode getThemeMode() {
    return isSavedLightMode() ? ThemeMode.light : ThemeMode.dark;
  }

  bool isSavedLightMode() {
    return _getStorage.read(storageKey) ?? false;
  }

  void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storageKey, isDarkMode);
  }

  void changeThemeMode() {
    Get.changeThemeMode(
        isSavedLightMode() ? ThemeMode.dark : ThemeMode.light
    );
    saveThemeMode(!isSavedLightMode());
  }
}