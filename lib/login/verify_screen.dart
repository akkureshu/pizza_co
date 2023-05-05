import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/login/search_area.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Verification", white, 16.sp, FontWeight.w400),
        centerTitle: false,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 28.h),
        child: SizedBox(
            width: 1.sw,
            height: 52.h,
            child: DefaultButton(
                text: "Verify",
                press: () {
                  Get.to(() => const SearchArea());
                })),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
        child: Column(
          children: [
            customText("Please enter verification code",
                const Color(0xFF707070), 16.sp, FontWeight.w400,
                align: TextAlign.center),
            SizedBox(height: 5.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText("sent on ", const Color(0xFF707070), 16.sp,
                    FontWeight.w400),
                customText(" 65325412", kPrimaryColor, 16.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 45.h),
            SizedBox(
              height: 60,
              child: PinInputTextField(
                keyboardType: TextInputType.number,
                pinLength: 4,
                onChanged: (value) {
                  if (value.length == 4) {}
                },
                decoration: BoxLooseDecoration(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4B4B4B),
                      fontWeight: FontWeight.w400),
                  strokeWidth: 1,
                  gapSpace: 28,
                  radius: const Radius.circular(8),
                  strokeColorBuilder: const FixedColorBuilder(
                    Color(0xFFC3C3C3),
                  ),
                ),
              ),
            ),
            SizedBox(height: 45.h),
            customText(
                "54s", const Color(0xFFC3C3C3), 20.sp, FontWeight.normal),
            customText(
                "Resend", const Color(0xFFFCA485), 14.sp, FontWeight.normal),
          ],
        ),
      )),
    );
  }
}
