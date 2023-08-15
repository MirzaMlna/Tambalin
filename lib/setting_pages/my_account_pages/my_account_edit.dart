import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

class MyAccountEdit extends GetView<MenuController> {
  const MyAccountEdit({super.key});

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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Selesai',
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black26,
                            child: Icon(
                              Icons.person,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 14.sp,
                          ),
                          Text(
                            'Ubah Foto',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: tambalinPrimary,
                                fontSize: 18.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 15.h, // Atur tinggi sesuai kebutuhan
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nama Depan',
                              hintStyle: TextStyle(color: Colors.black26),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nama Belakang',
                              hintStyle: TextStyle(color: Colors.black26),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: accountTiles.length,
              itemBuilder: (context, index) => EditAccountForm(
                title: accountTiles[index].title,
                subtitle: accountTiles[index].subtitle,
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

List<EditAccountForm> accountTiles = const [
  EditAccountForm(
    title: 'Nomor Telepon',
    subtitle: '08582777387',
  ),
  EditAccountForm(
    title: 'Email',
    subtitle: 'name@example.gmail.com',
  ),
  EditAccountForm(
    title: 'Alamat Toko',
    subtitle: 'Saturnus',
  ),
  EditAccountForm(
    title: 'Tanggal Lahir',
    subtitle: 'April 15, 1999',
  ),
];

class EditAccountForm extends StatelessWidget {
  final String title;
  final String subtitle;

  const EditAccountForm({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Flexible(
              child: TextField(
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: subtitle,
                hintStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey)),
          ))
        ],
      ),
    );
  }
}
