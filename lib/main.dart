import 'package:flutter/material.dart';
import 'package:my_portfolio/core/themes/app_theme.dart';
import 'package:my_portfolio/presentation/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My portfolio',
      debugShowCheckedModeBanner: false,
      
      theme: appThemeData,
      home: const HomeScreen(),
    );
  }
}

