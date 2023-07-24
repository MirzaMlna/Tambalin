// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/login_section/sign_in.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      Color orangePrimary = Color(0xFFFF8900);
      Color blackPrimary = Color(0xFF242A37);
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                leading: BackButton(
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SignIn();
                  })),
                ),
              ),
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        'Verifikasi Nomor Telepon',
                        softWrap: false,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: blackPrimary, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )));
    });
  }
}
