import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/address_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _selectedIndex = 0;
  int _count = 1;
  String? bases;
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCoint() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

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
          child: DefaultButton(text: "Checkout", press: () {}),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Container(
              height: 55.h,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: const Color(0xFFc1dd9b),
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: ListView.builder(
                  shrinkWrap: false,
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: .44.sw,
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          // color: _selectedIndex == index
                          //     ? const Color(0xFF9cca4e)
                          //     : const Color(0xFFc1dd9b),
                          color: _selectedIndex == index
                              ? Colors.white60
                              : const Color(0xFFc1dd9b),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              walkicon,
                              width: 20.w,
                              height: 20.w,
                              color: _selectedIndex == index
                                  ? kTextColor
                                  : kTextMedium.withOpacity(.5),
                            ),
                            SizedBox(width: 8.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                customText(
                                    "Delivery",
                                    _selectedIndex == index
                                        ? kTextColor
                                        : kTextMedium.withOpacity(.5),
                                    14.sp,
                                    FontWeight.w500),
                                SizedBox(width: 2.w),
                                customText(
                                    "45 min",
                                    _selectedIndex == index
                                        ? kTextColor
                                        : kTextMedium.withOpacity(.5),
                                    12.sp,
                                    FontWeight.w500),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 16.h),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10.h),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 12.w),
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              color: border,
                              width: 1.0,
                            ),
                          )),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: CachedNetworkImage(
                                    height: 60.h,
                                    width: 60.w,
                                    fit: BoxFit.cover,
                                    imageUrl:
                                        "https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040417284.jpg"),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customText("Margherita (12)", kTextColor,
                                        15.sp, FontWeight.w600),
                                    SizedBox(height: 4.h),
                                    customText("Base: Garlic Butter",
                                        kTextColor, 13.sp, FontWeight.w400),
                                    SizedBox(height: 4.h),
                                    customText(
                                        "Toppings: Peppers - Coriander - Red Onions - Anchovies - Mushroom",
                                        kTextColor,
                                        13.sp,
                                        FontWeight.w400,
                                        maxLine: 3),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  customText("£7.50", kPrimaryColor, 18.sp,
                                      FontWeight.w600),
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    width: 60.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _decrementCoint();
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 12.h),
                                            child: const Icon(
                                                Icons.minimize_rounded,
                                                color: kPrimaryColor,
                                                size: 20),
                                          ),
                                        ),
                                        customText("$_count", kTextColor, 14.sp,
                                            FontWeight.w500),
                                        InkWell(
                                          onTap: () {
                                            _incrementCount();
                                          },
                                          child: const Icon(Icons.add,
                                              color: kPrimaryColor, size: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.close, size: 20)))
                      ],
                    ),
                  );
                }),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("Delivery Address", kTextColor, 16.sp,
                          FontWeight.w600),
                      InkWell(
                        onTap: () {
                          Get.to(() => const AddressList());
                        },
                        child: customText(
                            "Change", kPrimaryColor, 14.sp, FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(height: 11.h),
                  customText("John Doe", kTextColor, 14.sp, FontWeight.w400),
                  SizedBox(height: 5.h),
                  customText("97988874", kTextMedium, 14.sp, FontWeight.w400),
                  SizedBox(height: 5.h),
                  customText("Area, Block, Street, Avenue,House, Floor, Flat",
                      kTextMedium, 14.sp, FontWeight.w400),
                  SizedBox(height: 11.h),
                  const Divider(color: border),
                  SizedBox(height: 11.h),
                  customText(
                      "Payment summary", kTextColor, 16.sp, FontWeight.w600),
                  SizedBox(height: 11.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                          "Subtotal", kTextMedium, 13.sp, FontWeight.w400),
                      customText(
                          "£ 12.000", kTextMedium, 12.sp, FontWeight.w400),
                    ],
                  ),
                  SizedBox(height: 11.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("Vat", kTextMedium, 13.sp, FontWeight.w400),
                      customText(
                          "- £ 3.000", kTextMedium, 12.sp, FontWeight.w400),
                    ],
                  ),
                  SizedBox(height: 11.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                          "Delivery Fee", kTextMedium, 13.sp, FontWeight.w400),
                      customText(
                          "- £ 0.500", kTextMedium, 12.sp, FontWeight.w400),
                    ],
                  ),
                  SizedBox(height: 11.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                          "Grand Total", kTextMedium, 14.sp, FontWeight.w600),
                      customText(
                          "£ 8.500", kTextMedium, 14.sp, FontWeight.w600),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
