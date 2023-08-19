import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
              'Pemberitahuan',
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
            SizedBox(
              height: 3.h,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: accountTiles.length,
              itemBuilder: (context, index) => EditAccountForm(
                title: accountTiles[index].title,
                subtitle: accountTiles[index].subtitle,
                iconBackground: accountTiles[index].iconBackground,
                icon: accountTiles[index].icon,
              ),
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                height: 0,
                color: Colors.grey[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<EditAccountForm> accountTiles = [
  const EditAccountForm(
    icon: Icons.check_circle_sharp,
    iconBackground: Colors.blueAccent,
    title: 'Sistem',
    subtitle: 'Booking #1234 has been Success',
  ),
  const EditAccountForm(
    icon: Tambalin.promo,
    iconBackground: tambalinPrimary,
    title: 'Promosi',
    subtitle: 'Invite friends - Get 3 coupons each!',
  ),
  const EditAccountForm(
    icon: Tambalin.close,
    iconBackground: Colors.redAccent,
    title: 'Sistem',
    subtitle: 'Booking #1234 has been Cancelled',
  ),
  const EditAccountForm(
    icon: Tambalin.wallet,
    iconBackground: Colors.greenAccent,
    title: 'Sistem',
    subtitle: 'Thank you! Your transaction is completed',
  ),
  const EditAccountForm(
    icon: Tambalin.promo,
    iconBackground: tambalinPrimary,
    title: 'Promosi',
    subtitle: 'Invite friends - Get 3 coupons each!',
  ),
  const EditAccountForm(
    icon: Tambalin.close,
    iconBackground: Colors.redAccent,
    title: 'Sistem',
    subtitle: 'Booking #1234 has been Cancelled',
  ),
  const EditAccountForm(
    icon: Tambalin.wallet,
    iconBackground: Colors.greenAccent,
    title: 'Sistem',
    subtitle:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  ),
];

class EditAccountForm extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBackground;

  const EditAccountForm({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBackground,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: CircleAvatar(
        radius: 20.sp,
        backgroundColor: iconBackground,
        child: Icon(
          icon,
          color: Colors.white,
          size: 22.sp,
        ),
      ),
      title: Text(title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          )),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
        
      ),
    );
  }
}
