import 'package:flutter/widgets.dart';
import 'package:sleek_palette/sleek_palette.dart';
import 'package:sleek_typography/sleek_typography.dart';

class SleekDefaultTypography extends StatelessWidget {
  final Widget child;
  final SleekTypographyData data;

  const SleekDefaultTypography({
    Key key,
    this.data,
    @required this.child,
  }) : super(key: key);

  SleekTypographyData fallback(BuildContext context) {
    final palette = SleekPalette.of(context);
    return SleekTypographyData.fallback(
      bodyColor: palette.dark,
      titleColor: palette.black,
      subtitleColor: palette.grey,
      blockquoteColor: palette.grey,
      blockquoteBackgroundColor: palette.grey.variants.light,
      blockquoteBorderColor: palette.grey.variants.light.darken(0.15),
      codeColor: palette.grey,
      codeBackgroundColor: palette.grey.variants.light,
      buttonColor: palette.primary.variants.invert,
      bodyLightColor: palette.grey,
      linkColor: palette.primary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SleekTypography(
      data: data ?? fallback(context),
      child: child,
    );
  }
}
