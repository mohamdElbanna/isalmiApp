// MyThemeData.dart
import 'package:flutter/material.dart';
import 'package:islamic_application/style.dart';

class MyThemeData {
  static final lightMode = ThemeData(
    canvasColor: AppColor.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(fontSize: 25, color: AppColor.blackColor),
      bodySmall: TextStyle(
        fontSize: 25,
        color: AppColor.blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColor.blackColor,
        selectedIconTheme: IconThemeData(size: 40),
        unselectedIconTheme: IconThemeData(size: 30)),
    iconTheme: IconThemeData(color: AppColor.blackColor),
  );
}
