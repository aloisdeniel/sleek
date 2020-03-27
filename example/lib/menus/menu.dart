import 'package:flutter/material.dart';
import 'package:sleek/sleek.dart';

enum Section {
  typography,
  button,
}

class Menu extends StatelessWidget {
  final ValueNotifier<Section> selected;

  const Menu(this.selected);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: SleekText('Typography', style: SleekTextStyle.title2()),
            onTap: () => selected.value = Section.typography,
          ),
          ListTile(
            title: SleekText('Button', style: SleekTextStyle.title2()),
            onTap: () => selected.value = Section.button,
          ),
        ],
      ),
    );
  }
}
