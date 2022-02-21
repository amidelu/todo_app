import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.light(
        primary: Colors.green,
        secondary: Colors.teal,
        onError: Colors.red
    ),
    iconTheme: const IconThemeData(
      color: Colors.teal,
    ),
    cardTheme: const CardTheme(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 0),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      toolbarTextStyle: TextStyle(color: Colors.black),
      iconTheme: IconThemeData(
          color: Colors.black
      ),
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.dark(
        primary: Colors.green,
        secondary: Colors.teal,
        onError: Colors.red
    ),
    iconTheme: const IconThemeData(
      color: Colors.teal,
    ),
    cardTheme: const CardTheme(
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Colors.teal)
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 0),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      toolbarTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(
          color: Colors.white70
      ),
    ),
  );
}
