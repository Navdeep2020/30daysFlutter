import 'package:flutter/material.dart';
import 'package:flutter_catalog/home.dart';
import 'package:flutter_catalog/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        "/login": (context) => const Login(),
        "/home": (context) => const Home(),
      },
    );
  }
}
