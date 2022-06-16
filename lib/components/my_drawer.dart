import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/BottomTab/mytab_bar.dart';
import 'package:pizza_co/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                children: [
                  // SizedBox(
                  //   width: 80.w,
                  //   height: 80.w,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(100.r),
                  //     child: Image.asset("assets/images/pizza.jpg",
                  //         fit: BoxFit.fill),
                  //   ),
                  // ),
                  // SizedBox(height: 12.h),
                  customText("Hardy Bean", white, 14.sp, FontWeight.w600),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const MytabBar());
            },
            leading: const Icon(Icons.home, color: kPrimaryColor),
            title: customText("Home", kTextColor, 13.sp, FontWeight.w400,
                align: TextAlign.left),
          ),
          const Divider(color: Colors.black12, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading: const Icon(Icons.wallet_membership,
          //       size: 20, color: Colors.white54),
          //   title: customText("Budget Buckets", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   title: customText("Accounts", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading: const Icon(Icons.description_outlined,
          //       size: 19, color: Colors.white54),
          //   title: customText("Bills", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading: const Icon(Icons.bar_chart_rounded,
          //       size: 19, color: Colors.white54),
          //   title: customText("Stats", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading: const Icon(Icons.person, size: 19, color: Colors.white54),
          //   title: customText("Profile", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading:
          //       const Icon(Icons.settings, size: 19, color: Colors.white54),
          //   title: customText("Settings", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
          // const Divider(color: Colors.white60, height: 1),
          // ListTile(
          //   onTap: () {},
          //   leading: const Icon(Icons.logout_rounded,
          //       size: 19, color: Colors.white54),
          //   title: customText("Help / FAQ", white, 13.sp, FontWeight.w400,
          //       align: TextAlign.left),
          // ),
        ],
      ),
    );
  }
}
