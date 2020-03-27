import 'package:flutter/widgets.dart';
import 'package:sleek_palette/sleek_palette.dart';

class ExamplePalette {
  final String name;
  final String url;
  final SleekPaletteData palette;

  ExamplePalette({
    @required this.name,
    this.palette,
    this.url,
  }) : assert(palette != null || url != null);

  factory ExamplePalette.sleek() => ExamplePalette(
        name: 'sleek',
        palette: SleekPaletteData.fallback(),
      );

  factory ExamplePalette.bulma() => ExamplePalette(
        name: 'bulma',
        palette: SleekPaletteData(
          primary: HSLColor.fromAHSL(1.0, 171.0, 1.0, 0.41).toColor(),
          info: HSLColor.fromAHSL(1.0, 204.0, 0.86, 0.53).toColor(),
          secondary: HSLColor.fromAHSL(1.0, 217.0, 0.71, 0.53).toColor(),
          danger: HSLColor.fromAHSL(1.0, 348.0, 1.0, 0.61).toColor(),
          success: HSLColor.fromAHSL(1.0, 141.0, 0.71, 0.48).toColor(),
          warning: HSLColor.fromAHSL(1.0, 48.0, 1.0, 0.67).toColor(),
          dark: HSLColor.fromAHSL(1.0, 0, 0.0, 0.21).toColor(),
          light: HSLColor.fromAHSL(1.0, 0.0, 0.0, 0.96).toColor(),
          white: HSLColor.fromAHSL(1.0, 0.0, 0.0, 1.0).toColor(),
          black: HSLColor.fromAHSL(1.0, 0.0, 0.0, 0.04).toColor(),
          grey: HSLColor.fromAHSL(1.0, 0.0, 0.0, 0.04).toColor(),
        ),
      );

  factory ExamplePalette.foundation() => ExamplePalette(
        name: 'foundation',
        palette: SleekPaletteData.fromJson({
          'primary': 0xFF1779ba,
          'info': 0xFF3779B5,
          'secondary': 0xFF767676,
          'danger': 0xFFcc4b37,
          'success': 0xFF3adb76,
          'warning': 0xFFffae00,
          'dark': 0xFF2E383F,
          'light': 0xFFF7F7F7,
          'grey': 0xFF717171,
          'white': 0xFFFEFEFE,
          'black': 0xFF0a0a0a,
        }),
      );
}
