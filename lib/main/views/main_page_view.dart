import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/history/views/history_view.dart';
import 'package:tambalin_app/main/widgets/onilne_offline_widget.dart';
import 'package:tambalin_app/notfication/views/notification_view.dart';
import 'package:tambalin_app/settings/views/settings_view.dart';
import 'package:tambalin_app/widgets/buttons/button.dart';
import 'package:tambalin_app/order/views/order_view.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import '../../../../../utlis/tambalin_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  OverlayEntry? overlayEntry;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      if (!isOnline) {
        showOverlay(context);
      }
    });
  } //Biar Overlay ditampilkan setelah verifikasi

  void showOverlay(BuildContext context) {
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 90.0,
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          color: Colors.black.withOpacity(0.5), // transparansi hitam
          child: Center(
              child: Container(
            width: 70.w,
            height: 40.w,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(0, 0),
              ),
            ], color: tambalinBlack, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Kamu Sedang Offline\n',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: '\nTekan tombol di atas untuk Mencari Pelanggan',
                      style: TextStyle(fontSize: 17.sp, color: Colors.white),
                    ),
                  ])),
            ),
          )),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  void removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry!.remove();
      overlayEntry = null;
    }
  }

  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        removeOverlay();
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: tambalinBlack),
            title: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isOnline ? 'Online' : 'Offline',
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: [
              Switch.adaptive(
                value: isOnline,
                onChanged: (newValue) {
                  setState(() {
                    isOnline = newValue;
                    if (!isOnline) {
                      showOverlay(context);
                    } else {
                      removeOverlay(); // Hapus overlay jika switch bernilai true (online)
                    }
                  });
                },
                activeColor: tambalinPrimary,
                inactiveThumbColor: tambalinBlack,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: isOnline ? tambalinPrimary : tambalinBlack,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            isOnline ? Colors.black26 : Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: isOnline ? Colors.white : Colors.black26,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Uchiha Randa',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(3.0),
                            margin: const EdgeInsets.only(top: 4.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(80, 100)),
                            ),
                            child: Row(
                              children: [
                                const Icon(Tambalin.favorites,
                                    color: tambalinPrimary),
                                Text(
                                  'Gold Member',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: tambalinSecondary),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.wallet,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Dompet',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.history,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Riwayat',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HistoryView())));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.notification,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Pemberitahuan',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NotificationView())));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.gift,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Undang Teman',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.settings,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Pengaturan',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SettingsPage())));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Tambalin.logout,
                    color: Colors.grey,
                    size: 25.sp,
                  ),
                  title: Text(
                    'Keluar',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                  width: 100.w,
                  height: 10.h,
                  color: isOnline ? tambalinPrimary : tambalinBlack,
                  child: isOnline ? whenOnline : whenOffline),
              Stack(
                children: [
                  Container(
                    color: Colors.grey[350],
                    width: 100.w,
                    height: 48.h,
                  ),
                  Positioned(
                      top: 10.0,
                      right: 40.0,
                      left: 40.0,
                      child: SizedBox(
                        width: 20.w,
                        child: CustomButton(
                            color: isOnline ? Colors.red : Colors.green,
                            text: 'Order Page Here ',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const OrderScreen())));
                            }),
                      )),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        width: 12.w,
                        height: 12.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.my_location_rounded)),
                      )),
                ],
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 31.5.h,
            width: 100.w,
            padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15.0.sp),
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black26,
                          child: Icon(
                            Icons.person,
                            size: 25.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Uchiha Randa',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Pemula',
                            style:
                                TextStyle(fontSize: 15.sp, color: Colors.grey),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Rp 50.000',
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Saldo Anda',
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  margin: const EdgeInsets.only(top: 25.0),
                  width: 100.w,
                  height: 17.h,
                  decoration: BoxDecoration(
                      color: isOnline ? tambalinPrimary : tambalinBlack,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Tambalin.time,
                            color: Colors.white,
                            size: 22.sp,
                          ),
                          Text(
                            '10.30',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'JAM BUKA',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.white70),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Tambalin.speed,
                            color: Colors.white,
                            size: 22.sp,
                          ),
                          Text(
                            '30 KM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'JARAK TEMPUH',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.white70),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Tambalin.order,
                            color: Colors.white,
                            size: 22.sp,
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'PESANAN',
                            style: TextStyle(
                                fontSize: 15.sp, color: Colors.white70),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
