import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/BottomTab/categories_screen.dart';

import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/cart_screen.dart';

class ProductDeatil extends StatefulWidget {
  final ProModals item;

  const ProductDeatil({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductDeatil> createState() => _ProductDeatilState();
}

class _ProductDeatilState extends State<ProductDeatil> {
  int _selectedIndex = 0;
  final List<PicModals> picList = [];
  String dropdownValue = 'One';
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
  void initState() {
    super.initState();
    picList.add(
      PicModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211216040846498.png',
          size: '9'),
    );
    picList.add(
      PicModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211216041048488.png',
          size: '12'),
    );
    picList.add(
      PicModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Category_Size/item_0_20211217030952962.png',
          size: '16'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: backbutton(),
        title: customText(widget.item.title, white, 16.sp, FontWeight.w500),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(() => const CartScreen());
                  },
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
      bottomNavigationBar: ColoredBox(
        color: const Color(0xFFF2F2F2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Row(
                children: [
                  customText("Total :", kTextColor, 16.sp, FontWeight.w500),
                  customText(" £7.50", kPrimaryColor, 20.sp, FontWeight.w500),
                ],
              ),
              SizedBox(width: 15.w),
              SizedBox(
                width: .25.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _decrementCoint();
                      },
                      child: Container(
                          padding: EdgeInsets.only(bottom: 6.h),
                          width: 25.w,
                          height: 25.w,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                          child: const Icon(Icons.minimize_rounded,
                              color: white, size: 15)),
                    ),
                    customText("$_count", kTextColor, 14.sp, FontWeight.w500),
                    InkWell(
                      onTap: () {
                        _incrementCount();
                      },
                      child: Container(
                          width: 25.w,
                          height: 25.w,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                          child: const Icon(Icons.add, color: white, size: 15)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const CartScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.r),
                    ),
                  ),
                  child:
                      customText("Add to card", white, 16.sp, FontWeight.w400),
                ),
              )
              // IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.shopping_cart,
              //       size: 20,
              //       color: kPrimaryColor,
              //     ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                  SizedBox(height: 20.h),
                  Container(
                    width: 1.sw,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration:
                        BoxDecoration(color: kPrimaryColor.withOpacity(.7)),
                    child: customText("Size Option ( Required )", kTextColor,
                        14, FontWeight.w500),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 1.sw,
                    height: 110.h,
                    child: Center(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) =>
                            Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          width: 1.w,
                          height: .2.sh,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                          ),
                        ),
                        itemCount: picList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.r),
                                  child: CachedNetworkImage(
                                      height: 80.h,
                                      width: 80.h,
                                      fit: BoxFit.fill,
                                      imageUrl: picList[index].image),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Icon(Icons.check_circle_outline_rounded,
                                        size: 20,
                                        color: _selectedIndex == index
                                            ? kPrimaryColor
                                            : const Color(0xFFE5E5E5)),
                                    SizedBox(width: 4.w),
                                    customText(picList[index].size, kTextColor,
                                        14.sp, FontWeight.w500)
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 1.sw,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration:
                        BoxDecoration(color: kPrimaryColor.withOpacity(.7)),
                    child: customText(
                        "Bases ( Optional )", kTextColor, 14, FontWeight.w500),
                  ),
                  // SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'normal';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "normal",
                            groupValue: bases,
                            onChanged: (value) {}),
                        customText(
                            "Normal", kTextColor, 13.sp, FontWeight.w400),
                        const Spacer(),
                        customText("£ 0.00", kTextColor, 15.sp, FontWeight.w600)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'bbq';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "bbq",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("BBQ", kTextColor, 13.sp, FontWeight.w400),
                        const Spacer(),
                        customText("£ 1.49", kTextColor, 15.sp, FontWeight.w600)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'ChilliBase';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "ChilliBase",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("bases", kTextColor, 13.sp, FontWeight.w400),
                        const Spacer(),
                        customText("£ 1.49", kTextColor, 15.sp, FontWeight.w600)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'garlicbutter';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "garlicbutter",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("Garlic Butter", kTextColor, 13.sp,
                            FontWeight.w400),
                        const Spacer(),
                        customText("£ 1.49", kTextColor, 15.sp, FontWeight.w600)
                      ],
                    ),
                  ),
                  // SizedBox(height: 20.h),
                  Container(
                    width: 1.sw,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration:
                        BoxDecoration(color: kPrimaryColor.withOpacity(.7)),
                    child: customText("Toppings ( Optional )", kTextColor, 14,
                        FontWeight.w500),
                  ),
                  // SizedBox(height: 20.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'cheese';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "cheese",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("Cheese (Extra)", kTextColor, 13.sp,
                            FontWeight.w400),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'onion';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "onion",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText(
                            "White Onion", kTextColor, 13.sp, FontWeight.w400)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'Chilli';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "Chilli",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("Chilli", kTextColor, 13.sp, FontWeight.w400)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'Olives';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "Olives",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText("Olives", kTextColor, 13.sp, FontWeight.w400)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        bases = 'Tomatoes';
                      });
                    },
                    child: Row(
                      children: [
                        Radio(
                            value: "Tomatoes",
                            groupValue: bases,
                            onChanged: (value) {
                              setState(() {
                                bases = value.toString();
                              });
                            }),
                        customText(
                            "Tomatoes", kTextColor, 13.sp, FontWeight.w400)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class PicModals {
  String size;
  String image;
  PicModals({
    required this.image,
    required this.size,
  });
}
