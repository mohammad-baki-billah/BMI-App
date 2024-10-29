import 'package:bmi_calculator/configs/theme.dart';
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        theme: lightTheme,
        darkTheme: lightTheme,
        home: HomePage());
  }
}
