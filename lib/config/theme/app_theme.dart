import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const List<Color> colorList = [
  Color(0xFFB71C1C),
  Color(0xFF880E4F),
  Color(0xFF4A148C),
  Color(0xFF311B92),
  Color(0xFF1A237E),
  Color(0xFF0D47A1),
  Color(0xFF01579B),
  Color(0xFF006064),
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'selectedColor must be between 0 and ${colorList.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
