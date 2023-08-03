import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/Settings/My_Account/my_account_page.dart';
import 'package:tambalin_app/Utlis/color_pallete.dart';

class MyAccountEdit extends StatefulWidget {
  const MyAccountEdit({Key? key}) : super(key: key);

  @override
  State<MyAccountEdit> createState() => _MyAccountEditState();
}

class _MyAccountEditState extends State<MyAccountEdit> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
                          fontSize: 15.sp),
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
                height: 22.h,
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(
                                30.0, 30.0, 30.0, 10.0),
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
                            'Ubah Foto',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: tambalinPrimary,
                                fontSize: 15.sp),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: 15.h, // Atur tinggi sesuai kebutuhan
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Nama Depan',
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 17.sp),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Nama Belakang',
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 17.sp),
                                enabledBorder: const UnderlineInputBorder(
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
              CustomListForMyAccount(
                  title: 'Nomor Telepon', subtitle: '08582777387'),
              CustomListForMyAccount(
                  title: 'Email', subtitle: 'name@example.gmail.com'),
              CustomListForMyAccount(
                  title: 'Alamat Toko', subtitle: 'Saturnus'),
              CustomListForMyAccount(
                  title: 'Tanggal Lahir', subtitle: 'April 12, 1999'),
            ],
          ),
        ),
      );
    });
  }
}
