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
      displayMedium: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
      displayLarge: TextStyle(
        color: Colors.black,
        fontSize: 36,
        fontWeight: FontWeight.w700,
        overflow: TextOverflow.ellipsis,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      )),
);
