import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackBUtton extends StatelessWidget {
  const BackBUtton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.w,
      //margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
      margin: EdgeInsets.only(left: 16.w, top: 8.h),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromRGBO(255, 255, 255, 0.34),
        border: Border.all(
          color: const Color(0xFFF0F0F0),
        ),
      ),
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back, size: 23),
      ),
    );
  }
}
