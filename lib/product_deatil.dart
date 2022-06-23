import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/BottomTab/categories_screen.dart';
import 'package:pizza_co/constants.dart';

class ProductDeatil extends StatefulWidget {
  final ProModals item;

  const ProductDeatil({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductDeatil> createState() => _ProductDeatilState();
}

class _ProductDeatilState extends State<ProductDeatil> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText(widget.item.title, white, 13.sp, FontWeight.w500),
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
      body: SafeArea(
          child: Column(
        children: [
          if (widget.item.image != null)
            CachedNetworkImage(
                height: .4.sh,
                width: double.infinity,
                fit: BoxFit.fill,
                imageUrl: widget.item.image!),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    widget.item.title, kTextColor, 18.sp, FontWeight.w500),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    customText(
                        "Category : ", kTextColor, 14.sp, FontWeight.w500),
                    customText(widget.item.category, kTextMedium, 14.sp,
                        FontWeight.w400),
                  ],
                ),
                SizedBox(height: 8.h),
                if (widget.item.dec != null)
                  customText(
                      widget.item.dec!, kTextColor, 12.sp, FontWeight.w400,
                      maxLine: 5),
                SizedBox(height: 30.h),

                SizedBox(
                  height: 80.h,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Text("data");
                      }),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5.r),
                            child: CachedNetworkImage(
                                height: 80.h,
                                width: 80.h,
                                fit: BoxFit.fill,
                                imageUrl:
                                    "https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211216040846498.png"),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              const Icon(Icons.check_circle_outline_rounded,
                                  size: 20, color: kPrimaryColor),
                              SizedBox(width: 4.w),
                              customText(
                                  "9", kTextColor, 14.sp, FontWeight.w500)
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: CachedNetworkImage(
                              height: 80.h,
                              width: 80.h,
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211216041048488.png"),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Icon(Icons.circle_outlined, size: 20),
                            SizedBox(width: 4.w),
                            customText("12", kTextColor, 14.sp, FontWeight.w500)
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: CachedNetworkImage(
                              height: 80.h,
                              width: 80.h,
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211217030952962.png"),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Icon(Icons.circle_outlined, size: 20),
                            SizedBox(width: 4.w),
                            customText("16", kTextColor, 14.sp, FontWeight.w500)
                          ],
                        )
                      ],
                    ),
                  ],
                ),

                // Text(item.amonnt),

                // Row(
                //   children: [
                //     Container(
                //         width: 22.w,
                //         height: 22.w,
                //         decoration: BoxDecoration(
                //           color: kPrimaryColor,
                //           borderRadius: BorderRadius.circular(4.r),
                //         ),
                //         child: const Icon(Icons.add, color: white, size: 15)),
                //     Container(
                //         width: 22.w,
                //         height: 22.w,
                //         decoration: BoxDecoration(
                //           color: kPrimaryColor,
                //           borderRadius: BorderRadius.circular(4.r),
                //         ),
                //         child: const Icon(Icons.add, color: white, size: 15)),
                //   ],
                // )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
