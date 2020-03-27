import 'package:flutter/material.dart';
import '../palettes/palette_tile.dart';
import '../palettes/palettes.dart';

class ThemeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ExamplePaletteTile(ExamplePalette.sleek()),
          ExamplePaletteTile(ExamplePalette.bulma()),
          ExamplePaletteTile(ExamplePalette.foundation()),
        ],
      ),
    );
  }
}
