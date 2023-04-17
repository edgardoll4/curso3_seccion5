import 'package:flutter/material.dart';

const Color _customColor = Color(0x86C95E17);
const List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.green,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor < _colorThemes.length,
            'El SelectColor debe ser entre 0 y ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      // brightness: Brightness.dark,
      colorSchemeSeed: _colorThemes[selectColor],
      useMaterial3: true,
    );
  }
}
