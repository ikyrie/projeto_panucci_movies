import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.white,
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 16,
      overflow: TextOverflow.ellipsis,
    ),
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);
