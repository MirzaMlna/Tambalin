import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

import '../../../../../utlis/tambalin_icons.dart';

Widget whenOnline = Row(
  children: [
    Container(
      width: 12.w,
      height: 12.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(left: 25.0),
      child: Icon(
        Icons.online_prediction_rounded,
        size: 25.sp,
        color: tambalinPrimary,
      ),
    ),
    SizedBox(
      width: 5.w,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kamu sedang Online',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ),
        Text(
          'Menunggu Orderan !',
          style: TextStyle(color: Colors.white, fontSize: 15.sp),
        )
      ],
    )
  ],
);

//When Offline
Widget whenOffline = Row(
  children: [
    Container(
      width: 12.w,
      height: 12.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(left: 25.0),
      child: Icon(
        Tambalin.moon,
        color: tambalinBlack,
        size: 25.sp,
      ),
    ),
    SizedBox(
      width: 5.w,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kamu Sedang Offline',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ),
        Text(
          'Koneksikan Internet Untuk Memulai !',
          style: TextStyle(color: Colors.white, fontSize: 15.sp),
        )
      ],
    )
  ],
);
