import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';
import 'package:tambalin_app/wallet/views/payment_history_separated.dart';
import 'package:tambalin_app/wallet/views/withdrawl/withdrawl_method_view.dart';

class MyWalletView extends StatefulWidget {
  const MyWalletView({super.key});

  @override
  State<MyWalletView> createState() => _MyWalletViewState();
}

class _MyWalletViewState extends State<MyWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tambalinPrimary,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 2.w,
            ),
            const Text(
              'Dompet',
              style: TextStyle(
                color: Colors.white,
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
          Container(
            width: 100.w,
            height: 30.h,
            color: tambalinPrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Pendapatan Anda',
                  style: TextStyle(fontSize: 18.sp, color: Colors.white70),
                ),
                Text(
                  'Rp. 30,000',
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 90.w,
                  height: 10.h,
                  margin: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.only(top: 15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const WithdrawlMethodView())));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20.sp,
                        backgroundColor: tambalinPrimary,
                        child: Icon(
                          Tambalin.money_2,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      title: Text(
                        'Metode Penarikan',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: tambalinPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20.sp,
                        color: tambalinPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RIWAYAT PEMBAYARAN',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: history.length * 2 - 1,
              itemBuilder: (context, index) {
                if (index.isOdd) {
                  return Divider(
                    thickness: 1,
                    height: 0,
                    color: Colors.grey[300],
                  );
                }
                final paymentHistory = history[index ~/ 2];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: Colors.black26,
                    child: Icon(
                      Icons.person,
                      size: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    paymentHistory.userName,
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    paymentHistory.id,
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: Text(
                    'Rp. ${paymentHistory.price}',
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
