import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: customText("More", white, 16.sp, FontWeight.w500),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 20,
                    color: white,
                  )),
              Positioned(
                right: 10,
                top: 4,
                child: Container(
                  width: 15.w,
                  height: 15.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r), color: white),
                  child: Center(
                      child: customText(
                          "2", kPrimaryColor, 10.sp, FontWeight.w500)),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title: customText(
                  'Account Info', kTextMedium, 14.sp, FontWeight.w500),
            ),
            Divider(
                color: const Color(0xFF707070).withOpacity(.2),
                thickness: 1,
                height: 1),
          ],
        ),
      )),
    );
  }
}
