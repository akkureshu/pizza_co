import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/BottomTab/categories_screen.dart';
import 'package:pizza_co/constants.dart';

class ProductDeatil extends StatelessWidget {
  final ProModals item;

  const ProductDeatil({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText(item.title, kTextColor, 13.sp, FontWeight.w500),
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
      body: SafeArea(
          child: Column(
        children: [
          if (item.image != null)
            CachedNetworkImage(
                height: .4.sh,
                width: double.infinity,
                fit: BoxFit.fill,
                imageUrl: item.image!),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(item.title, kTextColor, 18.sp, FontWeight.w500),
                SizedBox(height: 12.h),
                if (item.category != null)
                  customText(
                      item.category!, kTextMedium, 14.sp, FontWeight.w400),
                SizedBox(height: 8.h),
                customText(item.dec, kTextColor, 12.sp, FontWeight.w400,
                    maxLine: 5),
                SizedBox(height: 8.h),
                Text(item.amonnt),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
