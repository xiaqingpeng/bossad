import 'package:flutter/material.dart';
import 'package:bossad/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        primaryColor:  const Color.fromARGB(255, 0, 215, 198),
        // ignore: deprecated_member_use
        accentColor: Colors.cyan[300]
      ),
      home: const SplashPage(),
    );
  }
}

