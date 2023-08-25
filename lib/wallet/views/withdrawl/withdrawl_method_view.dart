import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class WithdrawlMethodView extends StatefulWidget {
  const WithdrawlMethodView({super.key});

  @override
  State<WithdrawlMethodView> createState() => _WithdrawlMethodViewState();
}

class _WithdrawlMethodViewState extends State<WithdrawlMethodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              'Metode Penarikan',
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 8.h,
              padding: const EdgeInsets.only(top: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const WithdrawlMethodView())));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: tambalinPrimary,
                    child: Icon(
                      Tambalin.wallet,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  title: Text(
                    'Tambahkan Metode Baru',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: tambalinBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'BANK',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: 100.w,
              height: 28.h,
              padding: const EdgeInsets.only(top: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const WithdrawlMethodView())));
                },
                child: Column(
                  children: [
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: '**** **** **** 3765',
                        subtitle: 'VISA',
                        action: () {}),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey[100],
                    ),
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: 'pfeffer_ellen@balistreri.net',
                        subtitle: 'PayPal',
                        action: () {}),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey[100],
                    ),
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: '**** **** **** 8562',
                        subtitle: 'Master Card',
                        action: () {}),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'E-WALLET',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: 100.w,
              height: 28.h,
              padding: const EdgeInsets.only(top: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const WithdrawlMethodView())));
                },
                child: Column(
                  children: [
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: '**** **** **** 3765',
                        subtitle: 'VISA',
                        action: () {}),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey[100],
                    ),
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: 'pfeffer_ellen@balistreri.net',
                        subtitle: 'PayPal',
                        action: () {}),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey[100],
                    ),
                    PaymentMethodList(
                        icon: Tambalin.wallet,
                        title: '**** **** **** 8562',
                        subtitle: 'Master Card',
                        action: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback action;

  const PaymentMethodList({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: action,
      leading: CircleAvatar(
        radius: 20.sp,
        backgroundColor: Colors.grey,
        child: Icon(
          icon,
          color: Colors.white,
          size: 20.sp,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18.sp, color: tambalinBlack, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontSize: 15.sp, color: Colors.grey, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 18.sp,
        color: Colors.grey,
      ),
    );
  }
}
