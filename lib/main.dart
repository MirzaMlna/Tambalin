// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/auth_pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: GoogleFonts.roboto().fontFamily),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFFF8900),
              primary: const Color(0xFFFF8900),
              secondary: const Color(0xFF242A37),
              background: Color(0xFFF7F7F7)),
          useMaterial3: true,
        ),
        home: SignIn(),
      );
    });
  }
}
