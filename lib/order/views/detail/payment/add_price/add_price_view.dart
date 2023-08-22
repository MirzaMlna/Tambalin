import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/order/views/detail/payment/add_payment_view.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';

class AddPriceView extends StatefulWidget {
  const AddPriceView({super.key});

  @override
  State<AddPriceView> createState() => _AddPriceViewState();
}

class _AddPriceViewState extends State<AddPriceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
              'Atur Harga Perbaikan',
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
        child: Container(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                'HARGA PERBAIKAN',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
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
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Color.fromARGB(10, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Text(
                        'Rp.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  hintText: '20.000',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp,
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'DESKRIPSI KERUSAKAN',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
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
                  hintText: 'Ada 1 Lubang Di Ban',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'PENTING! Harga di atas akan ditambahkan biaya layanan sebesar Rp. 5,000',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Material(
        color: const Color(0xffff8906),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const AddPaymentView())));
          },
          child: SizedBox(
            height: 12.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'Selesai',
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
