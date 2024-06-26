// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:motivational_quotes_app/view/screens/home_page.dart';
import 'package:motivational_quotes_app/view/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: SplashPage(),
    );
  }
}
