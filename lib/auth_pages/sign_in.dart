import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'package:tambalin_app/auth_pages/phone_verify.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import '../common_widgets/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
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
                margin: const EdgeInsets.all(20.0),
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
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          12.0, .0, 17.0, 0.0),
                                      child: Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                color: tambalinBlack,
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
                                              const TextSpan(
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
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                      cursorColor: tambalinPrimary,
                                      maxLength:
                                          12, // Set the maximum length to 12 digits
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          borderSide: const BorderSide(
                                            color: Color.fromARGB(10, 0, 0, 0),
                                            width: 2.0,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(11.0),
                                          borderSide: const BorderSide(
                                            color: tambalinPrimary,
                                            width: 1.0,
                                          ),
                                        ),
                                        prefixIcon: Container(
                                          margin: const EdgeInsets.only(
                                              right: 15.0),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              right: BorderSide(
                                                color:
                                                    Color.fromARGB(10, 0, 0, 0),
                                                width: 2.0,
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            margin: const EdgeInsets.all(10.0),
                                            padding:
                                                const EdgeInsets.only(top: 2.0),
                                            child: Text(
                                              '+62',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        hintText: '1234567890',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),

                                    /* Last of Number Input */
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    /* Button */
                                    CustomButton(
                                        color: tambalinBlack,
                                        text: 'SELANJUTNYA',
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      const PhoneVerify())));
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
      );
    }
  
}