import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/checkout_screen.dart';
import 'package:pizza_co/pages/deliveryscreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText("Cart", white, 16.sp, FontWeight.w500),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: SizedBox(
          width: 1.sw,
          height: 52.h,
          child: DefaultButton(
              text: "Next",
              press: () {
                Get.to(() => const CheckoutScreen());
              }),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 16.h, left: 14.w, right: 14.w),
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  height: 55.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFc1dd9b),
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: TabBar(
                      labelColor: kTextColor,
                      unselectedLabelColor: kTextMedium.withOpacity(.5),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white60),
                      tabs: [
                        Tab(
                          child: Row(
                            children: [
                              SvgPicture.asset(caricon,
                                  width: 20.w,
                                  height: 20.w,
                                  color: kTextMedium),
                              SizedBox(width: 8.w),
                              const Text("Delivery "),
                              const Text("(45 min)")
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                walkicon,
                                width: 20.w,
                                height: 20.w,
                                color: kTextMedium,
                              ),
                              SizedBox(width: 8.w),
                              const Text("Pick Up "),
                              const Text("(15 min)")
                            ],
                          ),
                        ),
                      ]),
                ),
                const Expanded(
                  child: TabBarView(children: [
                    DeliveryScreen(
                      isDelivery: true,
                    ),
                    DeliveryScreen(
                      isDelivery: false,
                    ),
                  ]),
                )
              ],
            )),
      )),
    );
  }
}
