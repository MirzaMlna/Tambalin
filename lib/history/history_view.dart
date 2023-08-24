import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/history/history_date_separated.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  List<bool> dateClicked = List.generate(date.length, (index) => false);

  void _toggleColor(int index) {
    setState(() {
      for (int i = 0; i < dateClicked.length; i++) {
        dateClicked[i] = i == index;
      }
    });
  }

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
              'Riwayat',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 11.h,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF1F2F6),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final historyDate = date[index];
                  return GestureDetector(
                    onTap: () {
                      _toggleColor(index);
                    },
                    child: Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: dateClicked[index]
                            ? Colors.white
                            : const Color(0xFFF1F2F6),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: dateClicked[index]
                              ? tambalinPrimary
                              : const Color(0xFFF1F2F6),
                          width: 2.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            historyDate.day,
                            style: TextStyle(
                              color: dateClicked[index]
                                  ? tambalinPrimary
                                  : const Color(0xFFBEC2CE),
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            '${historyDate.date}',
                            style: TextStyle(
                              color: dateClicked[index]
                                  ? tambalinPrimary
                                  : const Color(0xFFBEC2CE),
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10.0);
                },
                itemCount: date.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10.h,
                    width: 43.w,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: tambalinBlack,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Icon(
                          Tambalin.order,
                          size: 25.sp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pesanan',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 16.sp),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 10.h,
                    width: 43.w,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: tambalinPrimary,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Icon(
                          Tambalin.money,
                          size: 25.sp,
                          color: tambalinBlack,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Didapatkan',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16.sp),
                            ),
                            Text(
                              'Rp.30,000',
                              style: TextStyle(
                                  color: tambalinBlack,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
