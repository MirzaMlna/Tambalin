// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/Custom/custom_button.dart';
import 'package:tambalin_app/Settings/settings_page.dart';
import 'package:tambalin_app/Utlis/color_pallete.dart';
import 'package:tambalin_app/Custom/custom_widgets.dart';

import '../Utlis/tambalin_icons.dart';

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
                iconTheme: IconThemeData(color: tambalinBlack),
                title: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isOnline ? 'Online' : 'Ofline',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                ),
                // actions: [
                //   Switch.adaptive(
                //     value: isOnline,
                //     onChanged: (newValue) {
                //       setState(() {
                //         isOnline = newValue;
                //       });
                //     },
                //     activeColor: tambalinPrimary,
                //     inactiveThumbColor: tambalinBlack,
                //   ),
                // ],
              ),
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: isOnline ? tambalinPrimary : tambalinBlack,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                isOnline ? Colors.black26 : Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: isOnline ? Colors.white : Colors.black26,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uchiha Randa',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(3.0),
                                margin: EdgeInsets.only(top: 4.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(80, 100)),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Tambalin.favorites,
                                        color: tambalinPrimary),
                                    Text(
                                      'Gold Member',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: tambalinSecondary),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.wallet,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Dompet',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.history,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Riwayat',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.notification,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Pemberitahuan',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.gift,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Undang Teman',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.settings,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Pengaturan',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SettingsPage();
                        }));
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Tambalin.logout,
                        color: Colors.grey,
                        size: 25.sp,
                      ),
                      title: Text(
                        'Keluar',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              body: Column(
                children: [
                  Container(
                      width: 100.w,
                      height: 10.h,
                      color: isOnline ? tambalinPrimary : tambalinBlack,
                      child: isOnline
                          ? whenOnline
                          : whenOffline), // Location = custom_widgets.dart
                  Stack(
                    children: [
                      Container(
                        color: Colors.grey[350],
                        width: 100.w,
                        height: 48.h,
                      ),
                      Positioned(
                          bottom: 10.0,
                          right: 60.0,
                          left: 60.0,
                          child: SizedBox(
                            width: 20.w,
                            child: CustomButton(
                                color: isOnline ? Colors.red : Colors.green,
                                text: isOnline
                                    ? 'Berhenti Mencari Pelanggan'
                                    : 'Tekan Untuk Mencari Pelanggan',
                                onTap: () {
                                  setState(() {
                                    isOnline = !isOnline;
                                  });
                                }),
                          )),
                      Positioned(
                          top: 10.0,
                          right: 10.0,
                          child: Container(
                            width: 12.w,
                            height: 12.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.my_location_rounded)),
                          )),
                    ],
                  ),
                ],
              ),
              bottomNavigationBar: Container(
                height: 31.5.h,
                width: 100.w,
                padding: EdgeInsets.fromLTRB(12, 24, 12, 24),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10.0.sp),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black26,
                              child: Icon(
                                Icons.person,
                                size: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uchiha Randa',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Pemula',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.grey),
                              )
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Rp 100.000',
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Didapatkan',
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(25.0),
                      margin: EdgeInsets.only(top: 25.0),
                      width: 100.w,
                      height: 17.h,
                      decoration: BoxDecoration(
                          color: isOnline ? tambalinPrimary : tambalinBlack,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Tambalin.time,
                                color: Colors.white,
                              ),
                              Text(
                                '10.30',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'JAM BUKA',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white70),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Tambalin.speed,
                                color: Colors.white,
                              ),
                              Text(
                                '30 KM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'JARAK TEMPUH',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white70),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Tambalin.order,
                                color: Colors.white,
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'PESANAN',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.white70),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )));
    });
  }
}
