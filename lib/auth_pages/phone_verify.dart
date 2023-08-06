

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tambalin_app/main_pages/main_page.dart';

import '../utlis/color_pallete.dart';
import '../common_widgets/custom_button.dart';

class PhoneVerify extends StatefulWidget {
  const PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  bool _onEditing = true;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: BackButton(
                color: tambalinPrimary,
                onPressed: () => Navigator.pop(context)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 80.h,
                  height: 20.h,
                  margin: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Verifikasi Nomor Telepon',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 37.sp, fontWeight: FontWeight.bold)),
                      Text(
                        'Masukkan kode OTP di bawah',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 17.sp),
                      ),
                    ],
                  ),
                ),
                VerificationCode(
                  textStyle: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  underlineUnfocusedColor: Colors.grey[200],
                  underlineColor: tambalinPrimary,
                  underlineWidth: 1.w,
                  length: 4,
                  cursorColor: tambalinPrimary,
                  margin: const EdgeInsets.all(20.0),
                  onCompleted: (String value) {
                    setState(() {});
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomButton(
                    color: tambalinPrimary,
                    text: 'VERIFIKASI',
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const MainPage();
                      }));
                    })
              ],
            ),
          ),
        ),
      );
    });
  }
}
