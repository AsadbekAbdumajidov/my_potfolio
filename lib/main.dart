import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/themes/app_colors.dart';
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
      
    theme:  ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.bgColor,
        canvasColor: AppColors.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: const TextStyle(color: AppColors.bodyTextColor),
              bodyMedium: const TextStyle(color: AppColors.bodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}

