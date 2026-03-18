import 'package:flutter/material.dart';

List<Color> _colorTheme = [Colors.blue, Colors.purple, Colors.lightGreen];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0});

  ThemeData getThemeData() {
    return ThemeData(
      colorSchemeSeed: _colorTheme[selectColor],
      appBarTheme: AppBarTheme(backgroundColor: _colorTheme[selectColor]),
    );
  }
}
