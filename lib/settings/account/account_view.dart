import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/settings/account/account_edit_view.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: tambalinPrimary,
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyAccountEdit();
                    }));
                  },
                  child: Text(
                    'Ubah',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: tambalinPrimary,
                        fontSize: 18.sp),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 25.h,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black26,
                      child: Icon(
                        Icons.person,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Uchiha Randa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Pemula',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20.0),
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'INFORMASI',
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                )),
            const MyAccountList(
                title: 'Nama Lengkap', subtitle: 'Uchiha Randa'),
            const MyAccountList(
                title: 'Nomor Telepon', subtitle: '08582777387'),
            const MyAccountList(
                title: 'Email', subtitle: 'name@example.gmail.com'),
            const MyAccountList(title: 'Alamat Toko', subtitle: 'Saturnus'),
            const MyAccountList(
                title: 'Tanggal Lahir', subtitle: 'April 15, 1999'),
          ],
        ),
      ),
    );
  }
}

class MyAccountList extends StatelessWidget {
  final String title;
  final String subtitle;

  const MyAccountList({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          tileColor: Colors.white,
          title: Text(title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              )),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 1.w,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          height: 0,
          color: Colors.grey[100],
        )
      ],
    );
  }
}
