import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    final sleek = Sleek.of(context);
    return SleekRow(
      padding: SleekInsets.big(SleekSides.top),
      spaceBetween: SleekSpace.normal,
      children: <Widget>[
        SleekText(
          "#",
          style: SleekTextStyle.title4(
            color: sleek.palette.secondary,
          ),
        ),
        SleekText(
          title,
          style: SleekTextStyle.title4(),
        ),
      ],
    );
  }
}

class SectionSubheader extends StatelessWidget {
  final String title;

  const SectionSubheader(this.title);

  @override
  Widget build(BuildContext context) {
    return SleekRow(
      padding: SleekInsets.medium(SleekSides.top + SleekSides.bottom),
      spaceBetween: SleekSpace.normal,
      children: <Widget>[
        SleekText(
          "#",
          style: SleekTextStyle.subtitle4(),
        ),
        SleekText(
          title,
          style: SleekTextStyle.subtitle4(),
        ),
      ],
    );
  }
}
