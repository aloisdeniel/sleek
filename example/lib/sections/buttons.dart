import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';
import 'package:sleek_button/sleek_button.dart';

import '../headers.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection();

  @override
  Widget build(BuildContext context) {
    final sleek = Sleek.of(context);
    final colors = [
      sleek.palette.primary,
      sleek.palette.secondary,
      sleek.palette.danger,
      sleek.palette.warning,
      sleek.palette.info,
      sleek.palette.success,
      sleek.palette.white,
      sleek.palette.light,
      sleek.palette.dark,
      sleek.palette.black,
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionHeader('Flat style'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.flat(
                color: color,
                context: context,
              ),
              child: Text('Flat'),
            ),
          ),
          SectionHeader('Outlined style'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.outlined(
                color: color,
                context: context,
              ),
              child: Text('Outlined'),
            ),
          ),
          SectionHeader('Light style'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.light(
                color: color,
                context: context,
              ),
              child: Text('Light'),
            ),
          ),
          SectionHeader('Disabled'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              style: SleekButtonStyle.flat(
                color: color,
                context: context,
              ),
              child: Text('Disabled'),
            ),
          ),
          SectionHeader('Inverted'),
          ButtonCollection(
            color: sleek.palette.primary,
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.flat(
                inverted: true,
                color: color,
                context: context,
              ),
              child: Text('Flat inverted'),
            ),
          ),
          SectionHeader('Outlined inverted style'),
          ButtonCollection(
            color: sleek.palette.primary,
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.outlined(
                color: color,
                inverted: true,
                context: context,
              ),
              child: Text('Outlined inverted'),
            ),
          ),
          SectionHeader('Rounded'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.flat(
                rounded: true,
                color: color,
                context: context,
              ),
              child: Text('Flat rounded'),
            ),
          ),
          SectionHeader('Outlined rounded'),
          ButtonCollection(
            colors: colors,
            builder: (context, color) => SleekButton(
              onTap: () {},
              style: SleekButtonStyle.outlined(
                rounded: true,
                color: color,
                context: context,
              ),
              child: const Text('Outlined rounded'),
            ),
          ),
          SectionHeader('Icons'),
          ButtonWrap(
            children: <Widget>[
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.flat(
                  color: sleek.palette.primary,
                  context: context,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Icon(Icons.check),
                    const SizedBox(width: 6),
                    const Text('Save'),
                  ],
                ),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.light(
                  color: sleek.palette.danger,
                  context: context,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Delete'),
                    const SizedBox(width: 6),
                    const Icon(Icons.close),
                  ],
                ),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.flat(
                  color: sleek.palette.light,
                  size: SleekButtonSize.medium,
                  context: context,
                ),
                child: const Icon(Icons.format_bold),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.flat(
                  color: sleek.palette.light,
                  rounded: true,
                  size: SleekButtonSize.medium,
                  context: context,
                ),
                child: const Icon(Icons.format_bold),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.flat(
                  color: sleek.palette.light,
                  context: context,
                ),
                child: const Icon(Icons.format_bold),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.flat(
                  color: sleek.palette.light,
                  size: SleekButtonSize.small,
                  context: context,
                ),
                child: const Icon(Icons.format_bold),
              ),
              SleekButton(
                onTap: () {},
                style: SleekButtonStyle.outlined(
                  color: sleek.palette.dark,
                  size: SleekButtonSize.small,
                  context: context,
                ),
                child: Icon(Icons.format_bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

typedef Widget ButtonBuilder(BuildContext context, Color color);

class ButtonCollection extends StatelessWidget {
  final List<Color> colors;
  final ButtonBuilder builder;
  final Color color;

  const ButtonCollection({
    @required this.colors,
    @required this.builder,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWrap(
      color: color,
      children: colors.map((c) => builder(context, c)).toList(),
    );
  }
}

class ButtonWrap extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  const ButtonWrap({@required this.children, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Wrap(
        runSpacing: 10.0,
        spacing: 10.0,
        children: children,
      ),
    );
  }
}
