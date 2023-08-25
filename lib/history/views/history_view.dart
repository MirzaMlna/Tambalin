import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/history/views/history_date_separated.dart';
import 'package:tambalin_app/history/widget/history_detail.dart';
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
                              'Rp.60,000',
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
            const HistoryCard(
                userName: 'Gusti Randa',
                price: 25000,
                distance: 2.0,
                location: 'Lorem ipsum dolor sit amet',
                detail:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
            const HistoryCard(
                userName: 'Mirza Maulana',
                price: 35000,
                distance: 3.1,
                location: 'Lorem ipsum dolor sit amet',
                detail:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
          ],
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String userName;
  final int price;
  final double distance;
  final String location;
  final String detail;
  const HistoryCard({
    super.key,
    required this.userName,
    required this.price,
    required this.distance,
    required this.location,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => historyDetail(context))));
      },
      child: Container(
        height: 31.h,
        width: 90.w,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF1F2F6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
              child: Row(
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
                        userName,
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
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.white),
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
                            'Rp.$price',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            '$distance Km',
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
                child: Text(location,
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
                margin: const EdgeInsets.only(top: 10),
                child: Text(detail,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
