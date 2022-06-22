import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/login/verify_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Sign Up", white, 16.sp, FontWeight.w600),
        centerTitle: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              children: [
                TextFormField(
                  decoration: myInputDecoration(hintText: "First Name"),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: myInputDecoration(hintText: "Last Name"),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: myInputDecoration(hintText: "Email Id"),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: myInputDecoration(hintText: "Mobile Number"),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  maxLines: 2,
                  decoration: myInputDecoration(hintText: "Address"),
                ),
                SizedBox(height: 10.h),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: myInputDecoration(hintText: "Town/City"),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  decoration: myInputDecoration(hintText: "Post Code"),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                    width: 1.sw,
                    height: 52.h,
                    child: DefaultButton(
                        text: "Sumbit",
                        press: () {
                          Get.to(() => const VerifyScreen());
                        }))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
