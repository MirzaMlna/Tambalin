// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:tambalin_app/Auth/phone_verify.dart';
import 'package:tambalin_app/Utlis/color_pallete.dart';
import '../Custom/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  width: 100.w,
                  height: 30.h,
                  child: Image.asset(
                    "assets/images/sign_in.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 100.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        /* Email Input */
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(25.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            12.0, .0, 17.0, 0.0),
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: tambalinSecondary,
                                                  fontSize: 28.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Daftar',
                                                    style: TextStyle(
                                                        fontSize: 36.sp,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                  text: ' dengan Nomor Telepon',
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      /* Number Input */
                                      TextFormField(
                                        style: GoogleFonts.roboto(),
                                        cursorColor: tambalinPrimary,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              borderSide: BorderSide(
                                                color:
                                                    Color.fromARGB(10, 0, 0, 0),
                                                width: 2.0,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              borderSide: BorderSide(
                                                  color: tambalinPrimary,
                                                  width: 1.0),
                                            ),
                                            prefixIcon: Container(
                                              margin:
                                                  EdgeInsets.only(right: 15.0),
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  right: BorderSide(
                                                    color: Color.fromARGB(
                                                        10, 0, 0, 0),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                margin: EdgeInsets.all(10.0),
                                                padding:
                                                    EdgeInsets.only(top: 4.0),
                                                child: Text('+62',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 17.sp,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                            ),
                                            hintText: 'Nomor Telepon',
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 17.sp)),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                      ),
                                      /* Last of Number Input */
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      /* Button */
                                      CustomButton(
                                          color: tambalinSecondary,
                                          text: 'SELANJUTNYA',
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return PhoneVerify();
                                            }));
                                          }),
                                      /* Last of Button */
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
