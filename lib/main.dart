import 'package:flutter/material.dart';
import 'package:flutter_catalog/home.dart';
import 'package:flutter_catalog/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Home(),
         "/login": (context) => Login()
      },
    );
  }
}
