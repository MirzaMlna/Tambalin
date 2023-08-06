import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class OrderReceived extends StatefulWidget {
  const OrderReceived({super.key});

  @override
  State<OrderReceived> createState() => _OrderReceivedState();
}

class _OrderReceivedState extends State<OrderReceived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: tambalinPrimary,
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 2.w,
            ),
            const Text(
              '#123456',
              style: TextStyle(
                color: tambalinBlack,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                width: 14.w,
                height: 6.5.h,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(11.0),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mirza Otsutsuki',
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Container(
                    width: 20.w,
                    padding: const EdgeInsets.all(3.0),
                    margin: const EdgeInsets.only(top: 4.0),
                    decoration: const BoxDecoration(
                      color: tambalinPrimary,
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(80, 100)),
                    ),
                    child: Text(
                      'Motor',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: [
              //       Text(
              //         'Estimasi Biaya',
              //         style: TextStyle(
              //             fontSize: 13.sp,
              //             fontWeight: FontWeight.w500,
              //             color: Colors.grey),
              //       ),
              //       Text(
              //         'Rp. 25.000',
              //         style: TextStyle(
              //           fontSize: 17.sp,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                width: 5.w,
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[100],
          ),
          ListTile(
            tileColor: Colors.white,
            title: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'LOKASI TUJUAN',
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Komplek Perdana Mandiri',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[100],
          ),
          ListTile(
            tileColor: Colors.white,
            title: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                'CATATAN',
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                  'Diseberang toko Anang Jamal, Motor Scope warna hitam',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[100],
          ),
          ListTile(
            tileColor: Colors.white,
            title: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'ESTIMASI BIAYA',
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.help_outline,
                      color: tambalinPrimary,
                      size: 17,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text('Harga Tambal Per Lubang',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 20.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text('Biaya Perjalanan',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 10.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold)),
                      Divider(
                        thickness: 1,
                        height: 0,
                        color: Colors.grey[100],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Text('Total Estimasi Biaya',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 30.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold)),
                      Divider(
                        thickness: 1,
                        height: 0,
                        color: Colors.grey[100],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 42.5.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4CE5B1),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Tambalin.contact,
                                  color: Colors.white,
                                  size: 25.sp,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Telepon',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 42.5.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4252FF),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Tambalin.message,
                                  color: Colors.white,
                                  size: 25.sp,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Kirim Pesan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 25.w,
                          //   height: 8.h,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xFFBEC2CE),
                          //     borderRadius: BorderRadius.circular(11),
                          //   ),
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       Icon(
                          //         Tambalin.trash,
                          //         color: Colors.white,
                          //         size: 25.sp,
                          //       ),
                          //       const SizedBox(height: 5),
                          //       Text(
                          //         'Batalkan',
                          //         style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 12.sp,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}
