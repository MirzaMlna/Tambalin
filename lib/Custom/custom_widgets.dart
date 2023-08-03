// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Utlis/color_pallete.dart';

Widget whenOnline = Row(
  children: [
    Container(
      width: 12.w,
      height: 12.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 25.0),
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
          'Anda sedang Online',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.sp),
        ),
        Text(
          'Menunggu Orderan !',
          style: TextStyle(color: Colors.white, fontSize: 12.sp),
        )
      ],
    )
  ],
);

Widget whenOffline = Row(
  children: [
    Container(
      width: 12.w,
      height: 12.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 25.0),
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(300 * 3.1415927 / 180),
        child: Icon(
          Icons.nightlight,
          size: 25.sp,
          color: tambalinPrimary,
        ),
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
          'Anda Sedang Offline',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17.sp),
        ),
        Text(
          'Koneksikan Internet Untuk Memulai !',
          style: TextStyle(color: Colors.white, fontSize: 12.sp),
        )
      ],
    )
  ],
);
