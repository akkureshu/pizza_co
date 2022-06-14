import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("My Orders", kTextColor, 13.sp, FontWeight.w500),
      ),
      drawer: const MyDrawer(),
    );
  }
}
