// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.color,
    required this.text, 
    required void Function() onTap,
  });

  VoidCallback? onTap;
  Color? color;
  String? text;

  @override
  Widget build(BuildContext context) {
    Color blackPrimary = Color(0xFF242A37);

    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: SizedBox(
        width: 90.w,
        height: 7.h,
        child: ElevatedButton(
          onPressed: () {
            onTap;
            /// Isi Action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color ??
                blackPrimary, // Memberikan warna latar belakang (tanpa efek saat ditekan)
          ),
          child: Text(
            text ?? 'Button',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
