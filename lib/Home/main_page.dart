// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/Custom/custom_button.dart';
import 'package:tambalin_app/Utlis/color_pallete.dart';
import 'package:tambalin_app/Custom/custom_widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                // Tambahkan fungsi untuk menangani aksi ketika ikon menu ditekan
              },
            ),
            title: Align(
              alignment: Alignment.center,
              child: Text(
                isOnline ? 'Online' : 'Ofline',
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: [
              Switch.adaptive(
                value: isOnline,
                onChanged: (newValue) {
                  setState(() {
                    isOnline = newValue;
                  });
                },
                activeColor: tambalinPrimary,
                inactiveThumbColor: tambalinSecondary,
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                  width: 100.w,
                  height: 10.h,
                  color: tambalinPrimary,
                  child: isOnline
                      ? whenOnline
                      : whenOffline), // Location = custom_widgets.dart
              Stack(
                children: [
                  Container(
                    color: Colors.green,
                    width: 100.w,
                    height: 50.h,
                  ),
                  Positioned(
                      bottom: 10.0,
                      right: 10.0,
                      child: CustomLocationIconButton(
                        onTap: () {},
                      ))
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
  // title: Text('AppBar with Switch'),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.menu),
            //     onPressed: () {
            //       // Tambahkan fungsi untuk menangani aksi ketika ikon menu ditekan
            //     },
            //   ),
            //   Switch(
            //     value: true,
            //     onChanged: (newValue) {
            //       // Tambahkan fungsi untuk menangani perubahan nilai switch
            //     },
            //   ),
            // ],