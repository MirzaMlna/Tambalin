// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tambalin_app/Auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: GoogleFonts.roboto().fontFamily),
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xFFFF8900),
              onPrimary: Color(0xFF242A37),
              secondary: Color(0xFF242A37),
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.white,
              background: Colors.white,
              onBackground: Color(0xFF242A37),
              surface: Color(0xFFFF8900),
              onSurface: Colors.white),
          ),
      home: SignIn(),
    );
  }
}
