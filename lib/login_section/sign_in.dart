// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:tambalin_app/login_section/phone_verify.dart';
import 'package:tambalin_app/login_section/sign_up.dart';

import '../custom_widgets/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Color orangePrimary = Color(0xFFFF8900);
  Color blackPrimary = Color(0xFF242A37);

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
                                            12.0, 12.0, 17.0, 0.0),
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                  color: blackPrimary,
                                                  fontSize: 28.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Daftar',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
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
                                        cursorColor: orangePrimary,
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
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
                                                  color: orangePrimary,
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
                                                child: Text(
                                                  '+62',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    textStyle: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            hintText: 'Nomor Telepon',
                                            hintStyle: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                  color: Colors.grey[400],
                                                  fontSize: 17.0),
                                            )),
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
                                          color: blackPrimary,
                                          text: 'SELANJUTNYA',
                                          onTap: () {
                                            Navigator.pushReplacement(context,
                                                MaterialPageRoute(
                                                    builder: ((context) {
                                              return PhoneVerify();
                                            })));
                                          }),
                                      /* Last of Button */
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belum mempunyai akun? ',
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: blackPrimary)),
                              ),
                              TextSpan(
                                text: 'Daftar',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: blackPrimary,
                                      fontWeight: FontWeight.bold),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return SignUp();
                                    }));
                                  },
                              ),
                            ],
                          ),
                        ),
                      )
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
