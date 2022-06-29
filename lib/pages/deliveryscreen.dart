// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:pizza_co/constants.dart';
// import 'package:pizza_co/pages/address_list.dart';
// import 'package:pizza_co/pages/coupon_screen.dart';

// class DeliveryScreen extends StatelessWidget {
//   const DeliveryScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 26.h),
//         customText("Order summary", kTextColor, 16.sp, FontWeight.w600),
//         SizedBox(height: 11.h),
//         ListView.builder(
//             itemCount: 2,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return InkWell(
//                 onTap: () {},
//                 child: Container(
//                   margin: EdgeInsets.only(bottom: 10.h),
//                   padding:
//                       EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
//                   decoration: BoxDecoration(
//                     border: Border.all(width: 1, color: border),
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(5.r),
//                         child: CachedNetworkImage(
//                             height: 60.h,
//                             width: 60.w,
//                             fit: BoxFit.cover,
//                             imageUrl:
//                                 "https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040417284.jpg"),
//                       ),
//                       SizedBox(width: 8.w),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 customText("Margherita (12)", kTextColor, 15.sp,
//                                     FontWeight.w600),
//                                 const Spacer(),
//                                 customText("£7.50", kPrimaryColor, 18.sp,
//                                     FontWeight.w600),
//                                 SizedBox(width: 10.w),
//                                 InkWell(
//                                   onTap: () {},
//                                   child: const Icon(Icons.delete_forever,
//                                       color: Colors.red, size: 18),
//                                 )
//                               ],
//                             ),
//                             SizedBox(height: 5.h),
//                             customText("Base: Garlic Butter", kTextColor, 13.sp,
//                                 FontWeight.w400),
//                             SizedBox(height: 5.h),
//                             customText(
//                                 "Toppings: Peppers - Coriander - Red Onions - Anchovies - Mushroom",
//                                 kTextColor,
//                                 13.sp,
//                                 FontWeight.w400,
//                                 maxLine: 3),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             }),
//         SizedBox(height: 11.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Delivery Address", kTextColor, 16.sp, FontWeight.w600),
//             InkWell(
//               onTap: () {
//                 Get.to(() => const AddressList());
//               },
//               child:
//                   customText("Change", kPrimaryColor, 14.sp, FontWeight.w500),
//             )
//           ],
//         ),
//         SizedBox(height: 11.h),
//         customText("John Doe", kTextColor, 14.sp, FontWeight.w400),
//         SizedBox(height: 5.h),
//         customText("97988874", kTextMedium, 14.sp, FontWeight.w400),
//         SizedBox(height: 5.h),
//         customText("Area, Block, Street, Avenue,House, Floor, Flat",
//             kTextMedium, 14.sp, FontWeight.w400),
//         SizedBox(height: 11.h),
//         const Divider(color: border),
//         SizedBox(height: 11.h),
//         customText("Add promo code", kTextColor, 16.sp, FontWeight.w600),
//         SizedBox(height: 4.h),
//         customText("Get the best discounts with our latest coupons code.",
//             kTextMedium, 12.sp, FontWeight.w400),
//         SizedBox(height: 10.h),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(6.r),
//             border: Border.all(width: 1, color: const Color(0xFFF1F1F1)),
//           ),
//           child: Row(
//             children: [
//               SvgPicture.asset(code, height: 15.h, color: kPrimaryColor),
//               SizedBox(width: 8.w),
//               InkWell(
//                 onTap: () {
//                   Get.to(() => const CouponScreen());
//                 },
//                 child: customText(
//                     "Use Coupons", kTextColor, 14.sp, FontWeight.w500),
//               ),
//               const Spacer(),
//               const Icon(Icons.delete_forever_outlined, color: Colors.red),
//             ],
//           ),
//         ),
//         SizedBox(height: 11.h),
//         const Divider(color: border),
//         SizedBox(height: 11.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Subtotal", kTextMedium, 14.sp, FontWeight.w400),
//             customText("£ 12.000", kTextMedium, 14.sp, FontWeight.w400),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Discount", kTextMedium, 13.sp, FontWeight.w400),
//             customText(" £ 3.000", kTextMedium, 13.sp, FontWeight.w400),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Delivery Fee", kTextMedium, 13.sp, FontWeight.w400),
//             customText(" £ 0.500", kTextMedium, 13.sp, FontWeight.w400),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Grand Total", kTextMedium, 14.sp, FontWeight.w600),
//             customText("£ 9.500", kTextMedium, 14.sp, FontWeight.w600),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         const Divider(color: border),
//         SizedBox(height: 11.h),
//         Row(
//           children: [
//             customText("Delivery Time ", kTextColor, 16.sp, FontWeight.w600),
//             customText(" (Schedule)", kTextMedium, 12.sp, FontWeight.w600),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Wednesday, 3:15PM - 4:00PM", kTextMedium, 14.sp,
//                 FontWeight.w600),
//             InkWell(
//                 onTap: () {
//                   _addPhotoDialog();
//                 },
//                 child: customText(
//                     "Change", kPrimaryColor, 14.sp, FontWeight.w600)),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         const Divider(color: border),
//         SizedBox(height: 11.h),
//         customText("Payment Method", kTextColor, 16.sp, FontWeight.w600),
//         SizedBox(height: 11.h),
//         customText("Cash On Delivery", kTextColor, 14.sp, FontWeight.w500),
//         SizedBox(height: 11.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("Credit Card", kTextColor, 14.sp, FontWeight.w500),
//             Image.asset("assets/images/pay-02.png", height: 30.h),
//           ],
//         ),
//         SizedBox(height: 11.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             customText("PayPal", kTextColor, 14.sp, FontWeight.w500),
//             Image.asset("assets/images/pay-03.png", height: 25.h),
//           ],
//         ),
//       ],
//     );
//   }
// }