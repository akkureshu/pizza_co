import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/cart_screen.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Coupons", white, 16.sp, FontWeight.w500),
      ),
      body: SafeArea(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemCount: 2,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => const CartScreen());
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: const [
                        BoxShadow(
                          color: border,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            "assets/images/logo-02.png",
                            width: 40.w,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                "Online10", kTextColor, 18.sp, FontWeight.w700),
                            SizedBox(height: 2.h),
                            customText("ONLINE 10% DISCOUNT", kTextMedium,
                                12.sp, FontWeight.w700),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 8.h),
                          decoration: BoxDecoration(
                              color: const Color(0xFFbedb8c),
                              border: Border.all(
                                  width: 2, color: const Color(0xFF9cca4e))),
                          child: customText(
                              "DFDGF", kTextColor, 12.sp, FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
