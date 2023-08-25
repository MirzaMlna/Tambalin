import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';

class IDCardView extends StatefulWidget {
  const IDCardView({super.key});

  @override
  State<IDCardView> createState() => _IDCardViewState();
}

class _IDCardViewState extends State<IDCardView> {
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
                  height: 28.h,
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
                    ],
                  )),
              const CardInformation(
                  title: 'Nomor Induk Keluarga', value: '1827364518675435'),
              const CardInformation(
                  title: 'Nama Lengkap', value: 'Jajang Sujaman'),
              const CardInformation(
                  title: 'Tempat / Tanggal Lahir',
                  value: 'Banjarmasin, 30-02-2000 SM'),
              const CardInformation(
                  title: 'Alamat',
                  value: 'JL. PADAT KARYA KOMP. PURNAMA PERMAI III JLR 2A/26'),
              const CardInformation(title: 'Kelurahan', value: 'Sultan Adam'),
              const CardInformation(
                  title: 'Kecamatan', value: 'Banjarmasin Utara'),
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

class CardInformation extends StatelessWidget {
  final String title;
  final String value;

  const CardInformation({
    super.key,
    required this.title,
    required this.value,
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
        Container(
          width: 100.w,
          height: 5.h,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black26,
              fontSize: 18.sp,
            ),
          ),
        )
      ],
    );
  }
}
