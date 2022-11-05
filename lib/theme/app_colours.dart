import 'package:flutter/material.dart';

class StandardColor extends Color {
  const StandardColor(int value) : super(value);
}

class AppColours {
  static const StandardColor darkestGrey = StandardColor(0xFF303030);
  static const StandardColor grey = StandardColor(0xFF707070);
  static const StandardColor lightGrey = StandardColor(0xFFD3D3D3);
  static const Color hintColor = Color.fromARGB(400, 198, 198, 197);

  static const StandardColor white = StandardColor(0xFFFFFFFF);
  static const StandardColor black = StandardColor(0xFF000000);
}
