import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pizza_co/BottomTab/mytab_bar.dart';

import 'package:pizza_co/constants.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: searchbox(
            hintText: "Search Post Code",
            onTap: () {
              Get.bottomSheet(const SelectLocation());
            }),
      ),
      body: SafeArea(
        child: Image.asset(
          "assets/images/map.png",
          width: 1.sw,
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: white,
        child: SvgPicture.asset("assets/icon/location.svg",
            color: kPrimaryColor, width: 24.w, height: 24.h),
      ),
    );
  }
}

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r), topLeft: Radius.circular(8.r)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              "Stores nearby", const Color(0xFF2D2D2D), 14.sp, FontWeight.w500),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 12.h);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => const MytabBar());
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: CachedNetworkImage(
                              width: 80.h,
                              height: 80.h,
                              fit: BoxFit.fill,
                              imageUrl:
                                  'https://postcode.thepizzacompany.co.uk/DataImages/BranchMaster/item_0_20211222025522931.jpg'),
                        ),
                        SizedBox(width: 10.w),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText("Westgate:", const Color(0xFF212121),
                                  16.sp, FontWeight.w600),
                              SizedBox(height: 8.h),
                              customText(
                                  "498 Westgate Road, Newcastle, NE4 9HD",
                                  kTextColor,
                                  12.sp,
                                  FontWeight.w400),
                              SizedBox(height: 8.h),
                              customText("( Distance: 0.04 Mile )",
                                  kPrimaryColor, 12.sp, FontWeight.w500),
                              Row(
                                children: [
                                  Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          caricon,
                                          color: kPrimaryColor,
                                          width: 20.w,
                                        )),
                                  ),
                                  Container(
                                    width: 30.w,
                                    height: 30.w,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          walkicon,
                                          color: kPrimaryColor,
                                          width: 20.w,
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
