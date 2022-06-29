import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/add_address.dart';
import 'package:pizza_co/pages/cart_screen.dart';

class AddressList extends StatefulWidget {
  const AddressList({Key? key}) : super(key: key);

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Select Address", white, 16.sp, FontWeight.w500),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const AddAddress());
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SizedBox(
            width: 1.sw,
            height: 52.h,
            child: DefaultButton(
                text: "Next",
                press: () {
                  Get.to(() => const CartScreen());
                })),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Stack(
              children: [
                Container(
                  width: 1.sw,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: border, width: 1.0),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(
                              "Home", kTextColor, 14.sp, FontWeight.w600),
                          Icon(Icons.check_circle_outline_rounded,
                              size: 20,
                              color: _selectedIndex == index
                                  ? kPrimaryColor
                                  : const Color(0xFFE5E5E5)),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      customText(
                          "John Doe", kTextColor, 14.sp, FontWeight.w400),
                      SizedBox(height: 5.h),
                      customText(
                          "97988874", kTextMedium, 14.sp, FontWeight.w400),
                      SizedBox(height: 5.h),
                      customText("demo@gmail.com", kTextMedium, 14.sp,
                          FontWeight.w400),
                      SizedBox(height: 5.h),
                      customText(
                          "Area, Block, Street, Avenue,House, Floor, Flat",
                          kTextMedium,
                          14.sp,
                          FontWeight.w400),
                      SizedBox(height: 5.h),
                      customText(
                          "NE4 9BL", kTextMedium, 14.sp, FontWeight.w400),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
