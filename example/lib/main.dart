import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:sleek/sleek.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sleek(
      child: MaterialApp(
        title: 'Sleek Gallery',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
