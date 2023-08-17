import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/order/views/tracking/order_tracking_view.dart';
import 'package:tambalin_app/widgets/buttons/button.dart';
import 'package:tambalin_app/order/views/detail/chat/order_chat_view.dart';
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
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 25.sp,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mirza Otsutsuki',
                    style: TextStyle(
                        fontSize: 20.sp,
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
                      style: TextStyle(fontSize: 15.sp, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Komplek Perdana Mandiri',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
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
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                  'Diseberang toko Anang Jamal, Motor Scope warna hitam',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
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
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.help_outline,
                      color: tambalinPrimary,
                      size: 17,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            scrollable: true,
                            title: const Center(
                                child: Text(
                              'APA ITU ESTIMASI?',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            content: Column(
                              children: [
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(children: <TextSpan>[
                                      TextSpan(
                                        text: 'Estimasi Biaya adalah ',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: 'Perkiraan Biaya',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                        text:
                                            ' yang di bayarkan untuk perbaikan. Biaya perbaikan tegantung dari banyaknya lubang yang diperbaiki',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ])),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 5.h,
                                  child: CustomButton(
                                      color: tambalinPrimary,
                                      text: 'Paham',
                                      onTap: () {
                                        Navigator.pop(context);
                                      }),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
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
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 20.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
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
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 10.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
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
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text('Rp 30.000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold)),
                      Divider(
                        thickness: 1,
                        height: 0,
                        color: Colors.grey[100],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 28.w,
                            height: 9.h,
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
                                  size: 23.sp,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Telepon',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const OrderRoomchat())));
                            },
                            child: Container(
                              width: 28.w,
                              height: 9.h,
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
                                    size: 23.sp,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Kirim Pesan',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 28.w,
                            height: 9.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFBEC2CE),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Tambalin.trash,
                                  color: Colors.white,
                                  size: 23.sp,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Batalkan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
      bottomNavigationBar: Material(
        color: const Color(0xffff8906),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const OrderTrackingView())));
          },
          child: SizedBox(
            height: 12.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'MENUJU LOKASI',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17.sp),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
