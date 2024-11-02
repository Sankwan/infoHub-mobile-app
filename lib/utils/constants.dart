import 'package:flutter/material.dart';

//theme and some classes. didnt use much but they were created to be called in
//the app incase they were needed.

class Constants {
  //App related strings
  static String appName = "Info Hub";

  //Colors for theme
  static Color lightPrimary = const Color(0xfff3f4f9);
  static Color darkPrimary = const Color(0xff2B2B2B);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blue;
  static Color lightBG = const Color(0xfff3f4f9);
  static Color darkBG = const Color(0xff2B2B2B);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      color: lightBG,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).titleLarge,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 0,
      color: Color(0xfff3f4f9),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      color: darkBG,

      elevation: 0,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).titleLarge,
    ),
    bottomAppBarTheme: BottomAppBarTheme(elevation: 0, color: darkBG),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
  );
}
