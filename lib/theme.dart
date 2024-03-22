import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();

  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color strokeColor = Color(0xFFEDF2F6);
  static const Color grayColor = Color(0xFF9DB7CB);
  static const Color darkGreyColor = Color(0xFF5E7A90);
  static const Color blackColor = Color(0xFF2B333E);
  static const Color greenColor = Color(0xFF3CED78);
  static const Color darkGreenColor = Color(0xFF00521C);

  static const ColorScheme colorScheme = ColorScheme(
    primary: greenColor,
    secondary: strokeColor,
    background: whiteColor,
    surface: whiteColor,
    error: Colors.red,
    onPrimary: darkGreenColor,
    onSecondary: blackColor,
    onBackground: darkGreyColor,
    onSurface: grayColor,
    onError: whiteColor,
    brightness: Brightness.light,
  );

  static const TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: blackColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: whiteColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: blackColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: grayColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: darkGreyColor,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: darkGreenColor,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: darkGreenColor,
    ),
  );
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    labelStyle: lightTextTheme.bodyMedium,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    filled: true,
    fillColor: strokeColor,
    prefixIconColor: grayColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Gilroy',
    colorScheme: colorScheme,
    textTheme: lightTextTheme,
    inputDecorationTheme: inputDecorationTheme,
  );

  static final ThemeData darkTheme = ThemeData();
}
