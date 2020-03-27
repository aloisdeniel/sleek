import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';
import 'package:sleek/src/default_button.dart';
import 'package:sleek_palette/sleek_palette.dart';
import 'package:sleek_spacing/sleek_spacing.dart';
import 'package:sleek_typography/sleek_typography.dart';

import 'default_typography.dart';
import 'sleek_data.dart';

class Sleek extends StatelessWidget {
  final SleekData data;
  final Widget child;

  const Sleek({
    this.data,
    this.child,
  });

  static SleekData of(BuildContext context) {
    return SleekData(
      palette: SleekPalette.of(context),
      spacing: SleekSpacing.of(context),
      typography: SleekTypography.of(context),
      button: SleekButtonTheme.of(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SleekPalette(
      data: data?.palette,
      child: SleekSpacing(
        data: data?.spacing,
        child: SleekDefaultTypography(
          data: data?.typography,
          child: SleekDefaultButtonTheme(
            data: data?.button,
            child: child,
          ),
        ),
      ),
    );
  }
}
