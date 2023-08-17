import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
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

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 7.h,
      child: ElevatedButton(
        onPressed: widget.onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          backgroundColor: widget.color ?? tambalinBlack,
        ),
        child: Text(
          widget.text ?? 'Button',
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ),
    );
  }
}
