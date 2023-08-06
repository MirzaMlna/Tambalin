import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

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
                  width: 12.w,
                  height: 5.5.h,
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Estimasi Biaya',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      Text(
                        'Rp. 25.000',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              height: 0,
              color: Colors.grey[100],
            ),
          ],
        ),
      );
    }
  }

