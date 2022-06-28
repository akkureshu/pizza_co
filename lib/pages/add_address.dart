import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/address_list.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Add Address", white, 16.sp, FontWeight.w500),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SizedBox(
          width: 1.sw,
          height: 52.h,
          child: DefaultButton(
              text: "Save",
              press: () {
                Get.to(() => const AddressList());
              }),
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
                decoration: myInputDecoration(hintText: "Address Nickname"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "First Name"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Last Name"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Email Id"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Mobile"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration:
                    myInputDecoration(hintText: "Apartment, suite or floor"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Business name"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Address"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "City"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: myInputDecoration(hintText: "Post Code"),
              ),
              SizedBox(height: 15.h),
              TextFormField(
                maxLines: 2,
                decoration: myInputDecoration(hintText: "Order Instructions"),
              ),
              SizedBox(height: 15.h),
            ],
          )),
        ),
      )),
    );
  }
}
