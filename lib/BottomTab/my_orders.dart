import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/order_detail.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: customText("My Orders", white, 16.sp, FontWeight.w500),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => const OrderDetail());
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: CachedNetworkImage(
                              height: 80.h,
                              width: 80.h,
                              fit: BoxFit.fill,
                              imageUrl:
                                  'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222041123930.jpg'),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  customText("Status : ", kTextColor, 14.sp,
                                      FontWeight.w400),
                                  customText("Processing", kPrimaryColor, 14.sp,
                                      FontWeight.w500),
                                  const Spacer(),
                                  customText("Item : 3", kTextColor, 14.sp,
                                      FontWeight.w400),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    customText("Order Number : 146", kTextColor,
                                        13.sp, FontWeight.w400),
                                    customText("30/Jun/2022", kTextColor, 13.sp,
                                        FontWeight.w400),
                                  ]),
                              SizedBox(height: 8.h),
                              customText("£149.73", kPrimaryColor, 18.sp,
                                  FontWeight.w500)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
