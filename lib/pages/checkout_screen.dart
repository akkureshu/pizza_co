import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Checkout", white, 16.sp, FontWeight.w500),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SizedBox(
          width: 1.sw,
          height: 52.h,
          child: DefaultButton(text: "Checkout", press: () {}),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText("Payment Summary", kTextMedium, 16.sp, FontWeight.w600),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Subtotal", kTextMedium, 14.sp, FontWeight.w400),
                customText("£ 12.000", kTextMedium, 14.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Discount", kTextMedium, 13.sp, FontWeight.w400),
                customText(" £ 3.000", kTextMedium, 13.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Delivery Fee", kTextMedium, 13.sp, FontWeight.w400),
                customText(" £ 0.500", kTextMedium, 13.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Grand Total", kTextMedium, 14.sp, FontWeight.w600),
                customText("£ 9.500", kTextMedium, 14.sp, FontWeight.w600),
              ],
            ),
            SizedBox(height: 11.h),
            const Divider(color: border, height: 1),
            SizedBox(height: 11.h),
            customText("Payment Method", kTextColor, 16.sp, FontWeight.w600),
            SizedBox(height: 11.h),
            customText("Cash On Delivery", kTextColor, 14.sp, FontWeight.w500),
            SizedBox(height: 11.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Credit Card", kTextColor, 14.sp, FontWeight.w500),
                Image.asset("assets/images/pay-02.png", height: 30.h),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("PayPal", kTextColor, 14.sp, FontWeight.w500),
                Image.asset("assets/images/pay-03.png", height: 25.h),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
