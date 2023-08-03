// ignore_for_file: must_be_immutable, prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/Utlis/color_pallete.dart';

//Custom Button

class CustomButton extends StatefulWidget {
  CustomButton({
    Key? key,
    required this.color,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  Color? color;
  String? text;
  VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    Color blackPrimary = Color(0xFF242A37);

    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: SizedBox(
        width: 90.w,
        height: 7.h,
        child: ElevatedButton(
          onPressed: widget.onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.color ?? blackPrimary,
          ),
          child: Text(
            widget.text ?? 'Button',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

//Custom Location Icon Button

class CustomLocationIconButton extends StatefulWidget {
  CustomLocationIconButton({Key? key, required this.onTap}) : super(key: key);

  VoidCallback onTap; // Change 'VoidCallBack' to 'VoidCallback'

  @override
  State<CustomLocationIconButton> createState() =>
      _CustomLocationIconButtonState();
}

class _CustomLocationIconButtonState extends State<CustomLocationIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 12.w,
        height: 12.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        margin: EdgeInsets.only(left: 25.0),
        child: Icon(
          Icons.my_location_rounded,
          size: 25.sp,
          color:
              tambalinSecondary, // Ganti warna sesuai kebutuhan (tambalinSecondary)
        ),
      ),
    );
  }
}
