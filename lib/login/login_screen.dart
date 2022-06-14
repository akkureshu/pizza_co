import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/login/register_screen.dart';
import 'package:pizza_co/login/verify_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/loginbg.png",
            width: 1.sw,
            height: 483.h,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 1.sw,
              height: 363.h,
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  children: [
                    customText(
                        "Sign In", kPrimaryColor, 18.sp, FontWeight.w500),
                    SizedBox(height: 13.h),
                    customText("Enter Your Mobile Number", kBgColor, 12.sp,
                        FontWeight.w500),
                    SizedBox(height: 18.h),
                    Form(
                      child: TextFormField(
                        decoration:
                            myInputDecoration(hintText: "Mobile Number"),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    customText("Forget Password?", kPrimaryColor, 12.sp,
                        FontWeight.normal),
                    SizedBox(height: 24.h),
                    SizedBox(
                      width: 1.sw,
                      height: 52.h,
                      child: DefaultButton(
                        text: "Continue",
                        press: () {
                          Get.to(() => const VerifyScreen());
                        },
                      ),
                    ),
                    SizedBox(height: 16.h),
                    customText("Continue as guest", kTextMedium, 14.sp,
                        FontWeight.normal),
                    SizedBox(height: 16.h),
                    InkWell(
                      onTap: () {
                        Get.to(() => const RegisterScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customText(
                              "Don't have an account?",
                              const Color(0xFF707070),
                              12.sp,
                              FontWeight.normal),
                          customText(" Sign Up", kPrimaryColor, 12.sp,
                              FontWeight.normal),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
