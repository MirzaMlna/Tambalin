import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/widgets/buttons/button.dart';

Widget historyDetail(BuildContext context) {
  return Scaffold(
    backgroundColor: tambalinPrimary,
    body: Center(
      child: Container(
        width: 100.w,
        height: 80.h,
        margin: EdgeInsets.fromLTRB(15, 25, 15, 25),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 31.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 12.w,
                        height: 5.5.h,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gusti Randa',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Container(
                            width: 15.w,
                            padding: const EdgeInsets.all(3.0),
                            margin: const EdgeInsets.only(top: 4.0),
                            decoration: const BoxDecoration(
                              color: tambalinPrimary,
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(80, 100)),
                            ),
                            child: Text(
                              'Motor',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rp.30,000',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Text(
                                '2.0 Km',
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.black45),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
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
                    title: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'LOKASI',
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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
                    title: Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'DETAIL KERUSAKAN',
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
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
                      'BIAYA',
                      style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
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
                          child: Text('Biaya Perbaikan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text('20.000',
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
                        Text('10.000',
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
                          child: Text('Biaya Layanan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text('5.000',
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
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text('Total Biaya - Biaya Layanan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Text('Rp 35.000',
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
                          child: Text('Total Biaya Bersih',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold)),
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 80.w,
              child: CustomButton(
                  color: tambalinPrimary,
                  text: 'KEMBALI',
                  onTap: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
      ),
    ),
  );
}
