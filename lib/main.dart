import 'package:ui_test/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
      title: 'UI Test',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       textTheme: GoogleFonts.robotoTextTheme(),
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white,elevation: 0),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const Splashscreen(),
    );
  }
}
