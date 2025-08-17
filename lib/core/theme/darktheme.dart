import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFF1A1A1A),
  brightness: Brightness.dark,

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
  ),

  //appba
  appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1A1A1A)),
  //elevated button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF000000),
      minimumSize: Size(double.infinity, 60),
    ),
  ),

  //bottom navigation bar
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF262626),
    selectedIconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
    unselectedIconTheme: IconThemeData(color: Color(0xFFADADAD)),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
);
