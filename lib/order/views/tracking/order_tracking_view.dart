import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tambalin_app/order/views/detail/payment/add_payment_view.dart';
import 'package:tambalin_app/utlis/color_pallete.dart';
import 'package:tambalin_app/utlis/tambalin_icons.dart';
import 'package:tambalin_app/widgets/buttons/button.dart';

class OrderTrackingView extends StatefulWidget {
  const OrderTrackingView({super.key});

  @override
  State<OrderTrackingView> createState() => _OrderTrackingViewState();
}

class _OrderTrackingViewState extends State<OrderTrackingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            color: Colors.grey,
          ),
          Positioned(
              top: 120,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 15.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFF4CE5B1),
                          radius: 16.sp,
                          child: Icon(
                            Icons.arrow_upward_outlined,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          'Jl Kelayan B No 16',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: Colors.grey[100],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: tambalinPrimary,
                          radius: 16.sp,
                          child: Icon(
                            Tambalin.location,
                            color: Colors.white,
                            size: 18.sp,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          'Jl Gatot Subroto no 32',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 50,
              left: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: InkWell(
                  splashColor: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Tambalin.arrow_left_navgation,
                    size: 20.sp,
                    color: tambalinBlack,
                  ),
                ),
              )),
          Positioned(
              bottom: 35,
              right: 10,
              child: CircleAvatar(
                radius: 20.sp,
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.gps_fixed,
                    size: 23.sp,
                    color: tambalinBlack,
                  ),
                ),
              )),
          Positioned(
              bottom: 30,
              left: 80,
              child: SizedBox(
                height: 6.h,
                width: 60.w,
                child: CustomButton(
                  color: tambalinPrimary,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const AddPaymentView())));
                  },
                  text: 'Sudah Di Lokasi',
                ),
              )),
        ],
      ),
    );
  }
}
