import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';
import 'palettes.dart';

class ExamplePaletteTile extends StatelessWidget {
  final ExamplePalette palette;

  ExamplePaletteTile(this.palette) : super(key: Key(palette.name));

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(palette.name),
      onTap: () {
        if (palette.palette != null) {
          SleekPalette.update(context, palette.palette);
        } else {
          SleekPalette.updateFromUrl(context, palette.url);
        }
      },
    );
  }
}
