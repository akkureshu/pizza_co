import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/constants.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: customText("Order Daetil", white, 16.sp, FontWeight.w500),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("30/Jun/2022", kTextColor, 13.sp, FontWeight.w400),
                customText("Complete", kPrimaryColor, 13.sp, FontWeight.w600),
              ],
            ),
            SizedBox(height: 8.h),
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(12),
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
                            customText("Al-Funghi Pizza ", kTextColor, 15.sp,
                                FontWeight.w500),
                            customText(
                                "Qty: 2", kTextColor, 13.sp, FontWeight.w400),
                            const Spacer(),
                            customText(
                                "£15.80", kPrimaryColor, 15.sp, FontWeight.w600)
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            customText(
                                "Bases : ", kTextColor, 12.sp, FontWeight.w500),
                            customText(
                                "BBQ", kTextColor, 12.sp, FontWeight.w400),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            customText("Toppings : ", kTextColor, 12.sp,
                                FontWeight.w500),
                            customText("White Onion , Chilli , Olives ",
                                kTextColor, 12.sp, FontWeight.w400),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(12),
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
                            customText("Al-Funghi Pizza ", kTextColor, 15.sp,
                                FontWeight.w500),
                            customText(
                                "Qty: 1", kTextColor, 13.sp, FontWeight.w400),
                            const Spacer(),
                            customText(
                                "£15.80", kPrimaryColor, 15.sp, FontWeight.w600)
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            customText(
                                "Bases : ", kTextColor, 12.sp, FontWeight.w500),
                            customText(
                                "BBQ", kTextColor, 12.sp, FontWeight.w400),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            customText("Toppings : ", kTextColor, 12.sp,
                                FontWeight.w500),
                            customText("White Onion , Chilli , Olives ",
                                kTextColor, 12.sp, FontWeight.w400),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),
            customText("Payment Summary", kTextMedium, 16.sp, FontWeight.w600),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Subtotal", kTextMedium, 14.sp, FontWeight.w400),
                customText("£ 12.000", kTextMedium, 14.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Discount", kTextMedium, 13.sp, FontWeight.w400),
                customText(" £ 3.000", kTextMedium, 13.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Delivery Fee", kTextMedium, 13.sp, FontWeight.w400),
                customText(" £ 0.500", kTextMedium, 13.sp, FontWeight.w400),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText("Grand Total", kTextMedium, 14.sp, FontWeight.w600),
                customText("£ 9.500", kTextMedium, 14.sp, FontWeight.w600),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
