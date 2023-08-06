import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/common_widgets/custom_button.dart';
import 'package:tambalin_app/order_pages/order_received_page.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Center(
          child: Text(
            'PESANAN MASUK',
            style: TextStyle(color: tambalinPrimary),
          ),
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
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[100],
          ),
          const OrderScreenList(
            title: 'Komplek Purnama Permai 1 Jalur 2 No 12',
            subtitle: 'Lokasi Anda',
            iconColor: tambalinPrimary,
            icon: Tambalin.location,
          ),
          const OrderScreenList(
            title: 'Komplek Perdana Mandiri',
            subtitle: 'Lokasi Tujuan',
            iconColor: tambalinSecondary,
            icon: Tambalin.location,
          ),
          const OrderScreenList(
            title: '20.000',
            subtitle: 'Ongkos Perjalanan',
            iconColor: tambalinPrimary,
            icon: Tambalin.money,
          ),
          const OrderScreenList(
            title: '2,5 KM',
            subtitle: 'Jarak',
            iconColor: tambalinPrimary,
            icon: Tambalin.nearby,
          ),
          Divider(
            thickness: 1,
            height: 0,
            color: Colors.grey[100],
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomButton(
              color: tambalinPrimary,
              text: 'TERIMA',
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const OrderReceived())));
              }),
          SizedBox(
            height: 2.h,
          ),
          CustomButton(
              color: tambalinBlack,
              text: 'TOLAK',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}


class OrderScreenList extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? iconColor;
  final IconData icon;

  const OrderScreenList({
    required this.title,
    required this.subtitle,
    required this.iconColor,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          tileColor: Colors.white,
          leading: Icon(
            icon,
            color: iconColor,
            size: 25.sp,
          ),
          title: Text(
            subtitle.toUpperCase(),
            style: TextStyle(
                color: Colors.black26,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400)),
        )
      ],
    );
  }
}