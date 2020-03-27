import 'package:flutter/widgets.dart';
import 'package:sleek_button/sleek_button.dart';
import 'package:sleek_palette/sleek_palette.dart';
import 'package:sleek_spacing/sleek_spacing.dart';
import 'package:sleek_typography/sleek_typography.dart';

class SleekDefaultButtonTheme extends StatelessWidget {
  final Widget child;
  final SleekButtonThemeData data;

  const SleekDefaultButtonTheme({
    Key key,
    this.data,
    @required this.child,
  }) : super(key: key);

  SleekButtonThemeData fallback(BuildContext context) {
    final spacing = SleekSpacing.of(context);
    final palette = SleekPalette.of(context);
    final typography = SleekTypography.of(context);
    final buttonTextStyle = typography.styles.button.level3;
    final fontSize = buttonTextStyle.size.toPoints(typography: typography);
    return SleekButtonThemeData(
      fill: palette.primary,
      padding: spacing.medium,
      textStyle: buttonTextStyle.toTextStyle(context, typography: typography),
      cornerRadius: 4.0,
      borderWidth: 1.0,
      iconTheme: IconThemeData(
        opacity: 1.0,
        size: fontSize * 1.3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SleekButtonTheme(
      data: data ?? fallback(context),
      child: child,
    );
  }
}
