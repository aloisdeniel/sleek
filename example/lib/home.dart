import 'package:example/menus/menu.dart';
import 'package:example/menus/theme_menu.dart';
import 'package:example/sections/buttons.dart';
import 'package:example/sections/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<Section> selected;

  @override
  void initState() {
    selected = ValueNotifier<Section>(Section.typography);
    super.initState();
  }

  @override
  void dispose() {
    selected.dispose();
    super.dispose();
  }

  Widget section() {
    switch (selected.value) {
      case Section.typography:
        return TypographySection();
      default:
        return ButtonSection();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sleek = Sleek.of(context);
    return AnimatedBuilder(
      animation: selected,
      builder: (context, _) => Scaffold(
        backgroundColor: sleek.palette.white,
        drawer: Menu(selected),
        endDrawer: ThemeMenu(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: sleek.palette.primary,
          title: SleekText(
            'Sleek Gallery',
            style: SleekTextStyle.title2(
              color: sleek.palette.primary.variants.invert,
            ),
          ),
        ),
        body: section(),
      ),
    );
  }
}
