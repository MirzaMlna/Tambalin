import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.color,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final Color? color;
  final String? text;
  final VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

//Custom Button
class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 7.h,
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.color ?? tambalinBlack,
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
    );
  }
}
