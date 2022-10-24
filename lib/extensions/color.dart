import 'package:flutter/material.dart';

extension ToMaterialColor on Color {
  MaterialColor get asMaterial {
    return MaterialColor(
      value,
      {
        50: this,
        100: this,
        200: this,
        300: this,
        400: this,
        500: this,
        600: this,
        700: this,
        800: this,
        900: this,
      },
    );
  }
}
