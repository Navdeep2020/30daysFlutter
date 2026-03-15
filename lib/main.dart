import 'package:flutter/material.dart';
import 'package:flutter_catalog/home.dart';
import 'package:flutter_catalog/login.dart';
import 'package:flutter_catalog/utils/routes.dart';

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
        MyRoutes.loginRoute: (context) => const Login(),
        MyRoutes.homeRoute: (context) => const Home(),
      },
    );
  }
}
