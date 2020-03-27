import 'package:sleek_button/sleek_button.dart';
import 'package:sleek_palette/sleek_palette.dart';
import 'package:sleek_spacing/sleek_spacing.dart';
import 'package:sleek_typography/sleek_typography.dart';

class SleekData {
  final SleekTypographyData typography;
  final SleekPaletteData palette;
  final SleekSpacingData spacing;
  final SleekButtonThemeData button;

  const SleekData({
    this.typography,
    this.palette,
    this.spacing,
    this.button,
  });
}
