import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/account_screen.dart';
import 'package:pizza_co/pages/address_list.dart';
import 'package:pizza_co/pages/change_password.dart';

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
              onTap: () {
                Get.to(() => const AccountScreen());
              },
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title: customText(
                  'Account Info', kTextMedium, 14.sp, FontWeight.w500),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: kTextMedium),
            ),
            Divider(
                color: const Color(0xFF707070).withOpacity(.2),
                thickness: 1,
                height: 1),
            ListTile(
              onTap: () {
                Get.to(() => const AddressList());
              },
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title:
                  customText('My Address', kTextMedium, 14.sp, FontWeight.w500),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: kTextMedium),
            ),
            Divider(
                color: const Color(0xFF707070).withOpacity(.2),
                thickness: 1,
                height: 1),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title:
                  customText('Gift Card', kTextMedium, 14.sp, FontWeight.w500),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: kTextMedium),
            ),
            Divider(
                color: const Color(0xFF707070).withOpacity(.2),
                thickness: 1,
                height: 1),
            ListTile(
              onTap: () {
                Get.to(() => const ChangePassword());
              },
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title: customText(
                  'Change Password', kTextMedium, 14.sp, FontWeight.w500),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: kTextMedium),
            ),
            Divider(
                color: const Color(0xFF707070).withOpacity(.2),
                thickness: 1,
                height: 1),
            // ListTile(
            //   onTap: () {},
            //   contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
            //   title: customText(
            //       'Contact Preferences', kTextMedium, 14.sp, FontWeight.w500),
            //   trailing: const Icon(Icons.arrow_forward_ios,
            //       size: 16, color: kTextMedium),
            // ),
            // Divider(
            //     color: const Color(0xFF707070).withOpacity(.2),
            //     thickness: 1,
            //     height: 1),
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.only(left: 18.w, right: 27.w),
              title: customText('Log Out', kTextMedium, 14.sp, FontWeight.w500),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: kTextMedium),
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
