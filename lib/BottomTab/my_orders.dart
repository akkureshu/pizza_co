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
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 20,
                    color: Color(0xFF212121),
                  )),
              Positioned(
                right: 10,
                top: 4,
                child: Container(
                  width: 15.w,
                  height: 15.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: kPrimaryColor),
                  child: Center(
                      child: customText("2", white, 10.sp, FontWeight.w500)),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}
