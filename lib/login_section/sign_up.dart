// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:tambalin_app/login_section/sign_in.dart';
import '../custom_widgets/custom_button.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Color orangePrimary = Color(0xFFFF8900);
  Color blackPrimary = Color(0xFF242A37);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            resizeToAvoidBottomInset:
                true, // Mengubah ukuran layar saat keyboard muncul
            body: SingleChildScrollView(
              // Memberikan scrollability pada konten
              child: Container(
                margin: EdgeInsets.fromLTRB(25.0, 75.0, 25.0, 50.0),
                /* Orange Area */
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color: orangePrimary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image.asset(
                            "assets/images/sign_up.png",
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(24.0, 24.0, 34.0, 0.0),
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
                                    text: ' dengan Email dan Nomor Telepon',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /* Last of Orange Area */
                    /* White Area */
                    Column(
                      children: [
                        Container(
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
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
                                        /* Email Input */
                                        TextField(
                                          cursorColor: orangePrimary,
                                          decoration: InputDecoration(
                                            hintText: 'name@example.com',
                                            hintStyle: TextStyle(
                                              color: Colors.black26,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              borderSide: BorderSide(
                                                color: orangePrimary,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              borderSide: BorderSide(
                                                color:
                                                    Color.fromARGB(10, 0, 0, 0),
                                                width: 2.0,
                                              ),
                                            ),
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .singleLineFormatter
                                          ],
                                        ),
                                        /* Last of Email Input */
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
                                                  color: Color.fromARGB(
                                                      10, 0, 0, 0),
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
                                                margin: EdgeInsets.only(
                                                    right: 15.0),
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
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                        ),
                                        /* Last of Number Input */
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        /* Button */
                                        CustomButton(
                                            color: blackPrimary,
                                            text: 'DAFTAR',
                                            onTap: () {}),
                                        /* Last of Button */
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                    /* Last of White Area */

                    SizedBox(
                      height: 5.h,
                    ),
                    /* Have an Account Text */
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Sudah mempunyai akun? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Masuk',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignIn();
                                  }));
                                },
                            ),
                          ],
                        ),
                      ),
                    )
                    /* Last of Have an Account Text */
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
