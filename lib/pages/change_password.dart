import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Change Password", white, 16.sp, FontWeight.w500),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SizedBox(
          width: 1.sw,
          height: 52.h,
          child: DefaultButton(text: "Change Password", press: () {}),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: myInputDecoration(hintText: "Old Password"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "New Password"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration:
                    myInputDecoration(hintText: "Password Confirmation"),
              ),
              SizedBox(height: 15.h),
            ],
          )),
        ),
      )),
    );
  }
}
