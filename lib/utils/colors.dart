import 'package:flutter/material.dart';

Color convertHexStringToColor(String value) {
  if (value == null) {
    return null;
  }
  value = value.replaceAll('#', '');
  return Color(int.parse(value, radix: 16) + 0xFF000000);
}

String convertColorToHexString(Color color) {
  final hex = color.value.toRadixString(16);
  return '#' + hex.substring(2, hex.length);
}
