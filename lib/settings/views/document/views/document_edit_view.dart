import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class DocumentEditView extends StatefulWidget {
  const DocumentEditView({super.key});

  @override
  State<DocumentEditView> createState() => _DocumentEditViewState();
}

class _DocumentEditViewState extends State<DocumentEditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
              'Kartu Tanda Penduduk',
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  width: 100.w,
                  height: 32.h,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.only(top: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: const EdgeInsets.all(20.0),
                              width: 30.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFD428),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Icon(
                                Tambalin.profile,
                                size: 40.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 50.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F2F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 3.h,
                                margin: const EdgeInsets.only(top: 15.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F2F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 3.h,
                                margin: const EdgeInsets.only(top: 15.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F2F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              Container(
                                width: 50.w,
                                height: 3.h,
                                margin: const EdgeInsets.only(top: 15.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F2F6),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        child: Text(
                          'Ganti Foto',
                          style: TextStyle(
                            color: tambalinBlack,
                            fontSize: 20.sp,
                          ),
                        ),
                      )
                    ],
                  )),
              const DocumentInput(
                  title: 'Nomor Induk Keluarga',
                  hint: 'Contoh : 6352220820034231',
                  length: 16),
              const DocumentInput(
                  title: 'Nama Lengkap',
                  hint: 'Contoh : Jajang Sujaman',
                  length: 30),
              const DocumentInput(
                  title: 'Tanggal Lahir',
                  hint: 'Contoh : 01/05/1997',
                  length: 10),
              const DocumentInput(
                  title: 'Kecamatan',
                  hint: 'Contoh : Banjarmasin Utara',
                  length: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: const Color(0xffff8906),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 12.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'SELESAI',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17.sp),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DocumentInput extends StatelessWidget {
  final String title;
  final String hint;
  final int length;
  const DocumentInput({
    super.key,
    required this.title,
    required this.hint,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black45,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          maxLength: length,
          style: TextStyle(
            fontSize: 18.sp,
          ),
          cursorColor: tambalinPrimary,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: const BorderSide(
                color: Color.fromARGB(10, 0, 0, 0),
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
              borderSide: const BorderSide(
                color: tambalinPrimary,
                width: 1.0,
              ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    );
  }
}
