import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';

import '../components/default_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> categorydata = [
    {
      "title": "Pizza",
      "image": 'assets/images/pizza.jpg',
    },
    {
      "title": "Garlic Breads",
      "image": 'assets/images/breads.jpg',
    },
    {
      "title": "Burger",
      "image": 'assets/images/burger.jpg',
    },
    {
      "title": "Parmo",
      "image": 'assets/images/parmos.jpg',
    },
    {
      "title": "Kebabs",
      "image": 'assets/images/kebabs.jpg',
    },
    {
      "title": "Desserts",
      "image": 'assets/images/desserts.jpg',
    },
    {
      "title": "Drinks",
      "image": 'assets/images/drinks.jpg',
    },
    {
      "title": "Side Dishes",
      "image": 'assets/images/SideDishes.jpg',
    },
  ];

  final List<Map<String, String>> pickdata = [
    {
      "image": 'assets/images/restaurant-01.jpg',
    },
    {
      "image": 'assets/images/restaurant-02.jpg',
    },
    {
      "image": 'assets/images/restaurant-03.jpg',
    },
  ];

  final List<String> _images = [add, addone, addto];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: customText("Home", white, 13.sp, FontWeight.w500),
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
      drawer: const MyDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),
            SizedBox(
              height: 90.h,
              child: ListView.builder(
                  itemCount: categorydata.length,
                  padding: EdgeInsets.only(left: 14.w),
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 14.w),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6.r),
                              child: Image.asset(
                                categorydata[index]["image"]!,
                                width: 60.w,
                                height: 60.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            customText(categorydata[index]["title"]!,
                                const Color(0xFF4B4B4B), 10.sp, FontWeight.w500)
                          ],
                        ),
                      ),
                    );
                  })),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child:
                  customText('Best Offers', kTextColor, 18.sp, FontWeight.w500),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 200.h,
              child: ListView.builder(
                  itemCount: _images.length,
                  shrinkWrap: true,
                  padding:
                      EdgeInsets.only(left: 14.w, right: 0, top: 0, bottom: 0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        width: .6.sw,
                        margin: EdgeInsets.only(right: 18.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.r),
                          child: Image.asset(
                            _images[index],
                            width: 300.w,
                            height: 160.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  })),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: customText(
                  'Our Location', kTextColor, 18.sp, FontWeight.w500),
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.only(right: 14.w, left: 14.w, bottom: 18.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFF1F1F1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    child: Image.asset('assets/images/restaurant-01.jpg',
                        width: 1.sw, height: 131.h, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText("Thornaby Branch:", kTextColor, 15.sp,
                            FontWeight.w500),
                        SizedBox(height: 6.h),
                        customText(
                            "5 Newton Drive, Thornaby, TS17 0EJ ( Distance: 2 Mile )",
                            kTextMedium,
                            12.sp,
                            FontWeight.w400),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(staricon,
                                    color: kPrimaryColor, width: 10.w),
                                SizedBox(width: 5.w),
                                customText(
                                    "5.0", kTextMedium, 11.sp, FontWeight.w500),
                                SizedBox(width: 3.w),
                                customText("(1024)", const Color(0xFFABABAB),
                                    11.sp, FontWeight.w500),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(timeicon,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("20 mins", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(locationpin,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("1.3 km", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  walkicon,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(caricon, color: kPrimaryColor)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 14.w, left: 14.w, bottom: 18.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFF1F1F1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    child: Image.asset("assets/images/restaurant-02.jpg",
                        width: 1.sw, height: 131.h, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText("Thornaby Branch:", kTextColor, 15.sp,
                            FontWeight.w500),
                        SizedBox(height: 6.h),
                        customText(
                            "5 Newton Drive, Thornaby, TS17 0EJ ( Distance: 2 Mile )",
                            kTextMedium,
                            12.sp,
                            FontWeight.w400),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(staricon,
                                    color: kPrimaryColor, width: 10.w),
                                SizedBox(width: 5.w),
                                customText(
                                    "5.0", kTextMedium, 11.sp, FontWeight.w500),
                                SizedBox(width: 3.w),
                                customText("(1024)", const Color(0xFFABABAB),
                                    11.sp, FontWeight.w500),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(timeicon,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("20 mins", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(locationpin,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("1.3 km", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  walkicon,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(caricon, color: kPrimaryColor)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 14.w, left: 14.w, bottom: 18.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFF1F1F1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    child: Image.asset('assets/images/restaurant-03.jpg',
                        width: 1.sw, height: 131.h, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText("Thornaby Branch:", kTextColor, 15.sp,
                            FontWeight.w500),
                        SizedBox(height: 6.h),
                        customText(
                            "5 Newton Drive, Thornaby, TS17 0EJ ( Distance: 2 Mile )",
                            kTextMedium,
                            12.sp,
                            FontWeight.w400),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(staricon,
                                    color: kPrimaryColor, width: 10.w),
                                SizedBox(width: 5.w),
                                customText(
                                    "5.0", kTextMedium, 11.sp, FontWeight.w500),
                                SizedBox(width: 3.w),
                                customText("(1024)", const Color(0xFFABABAB),
                                    11.sp, FontWeight.w500),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(timeicon,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("20 mins", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(locationpin,
                                    color: kPrimaryColor, width: 12.w),
                                SizedBox(width: 5.w),
                                customText("1.3 km", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  walkicon,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(width: 4.w),
                                SvgPicture.asset(caricon, color: kPrimaryColor)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: pickdata.length,
            //     shrinkWrap: false,
            //     itemBuilder: ((context, index) {
            //       return Container(
            //         margin:
            //             EdgeInsets.only(right: 18.w, left: 18.w, bottom: 24.h),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(6.r),
            //           border: Border.all(
            //             width: 1,
            //             color: const Color(0xFFF1F1F1),
            //           ),
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             ClipRRect(
            //               borderRadius: const BorderRadius.only(
            //                   topLeft: Radius.circular(6),
            //                   topRight: Radius.circular(6)),
            //               child: Image.asset(pickdata[index]["image"]!,
            //                   width: 1.sw, height: 131.h, fit: BoxFit.fill),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 16.w, vertical: 8.h),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   customText("Thornaby Branch:", kTextColor, 15.sp,
            //                       FontWeight.w500),
            //                   SizedBox(height: 6.h),
            //                   customText(
            //                       "5 Newton Drive, Thornaby, TS17 0EJ ( Distance: 2 Mile )",
            //                       kTextMedium,
            //                       12.sp,
            //                       FontWeight.w400),
            //                   SizedBox(height: 6.h),
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Row(
            //                         mainAxisAlignment: MainAxisAlignment.center,
            //                         children: [
            //                           SvgPicture.asset(staricon,
            //                               color: kPrimaryColor, width: 10.w),
            //                           SizedBox(width: 5.w),
            //                           customText("5.0", kTextMedium, 11.sp,
            //                               FontWeight.w500),
            //                           SizedBox(width: 3.w),
            //                           customText(
            //                               "(1024)",
            //                               const Color(0xFFABABAB),
            //                               11.sp,
            //                               FontWeight.w500),
            //                           SizedBox(width: 5.w),
            //                           const Icon(Icons.circle,
            //                               size: 3, color: Color(0xFFC4C4C4)),
            //                           SizedBox(width: 5.w),
            //                           SvgPicture.asset(timeicon,
            //                               color: kPrimaryColor, width: 12.w),
            //                           SizedBox(width: 5.w),
            //                           customText(
            //                               "20 mins",
            //                               const Color(0xFFABABAB),
            //                               12.sp,
            //                               FontWeight.w400),
            //                           SizedBox(width: 5.w),
            //                           const Icon(Icons.circle,
            //                               size: 3, color: Color(0xFFC4C4C4)),
            //                           SizedBox(width: 5.w),
            //                           SvgPicture.asset(locationpin,
            //                               color: kPrimaryColor, width: 12.w),
            //                           SizedBox(width: 5.w),
            //                           customText(
            //                               "1.3 km",
            //                               const Color(0xFFABABAB),
            //                               12.sp,
            //                               FontWeight.w400),
            //                         ],
            //                       ),
            //                       Row(
            //                         children: [
            //                           SvgPicture.asset(
            //                             walkicon,
            //                             color: kPrimaryColor,
            //                           ),
            //                           SizedBox(width: 4.w),
            //                           SvgPicture.asset(caricon,
            //                               color: kPrimaryColor)
            //                         ],
            //                       )
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       );
            //     }),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }
}

class FilterBox extends StatefulWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  int _selectedIndex = 0;
  final List<Map<String, String>> listdata = [
    {
      "title": "Drive-thru",
      "image": 'assets/icon/car.svg',
    },
    {
      "title": "Walk-thru",
      "image": 'assets/icon/walkicon.svg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Center(
                      child: customText(
                          "Filter", kTextColor, 20.sp, FontWeight.w500))),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    close,
                    width: 10.w,
                  ))
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 46.h,
            child: ListView.separated(
                itemCount: listdata.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 20),
                shrinkWrap: false,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 152.w,
                      height: 46.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                            width: 1,
                            color: _selectedIndex == index
                                ? kPrimaryColor
                                : const Color(0xFFF1F1F1)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            listdata[index]["image"]!,
                            width: 20.w,
                          ),
                          SizedBox(width: 14.w),
                          customText(listdata[index]["title"]!, kTextMedium,
                              16.sp, FontWeight.w500)
                        ],
                      ),
                    ),
                  );
                })),
          ),
          SizedBox(height: 28.h),
          SizedBox(
              height: 52.h,
              width: 1.sw,
              child: DefaultButton(
                  text: "Confirm",
                  press: () {
                    Get.back();
                    Get.bottomSheet(const SelectLocation());
                  })),
          SizedBox(height: 14.h),
        ],
      ),
    );
  }
}

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Center(
                      child: customText("Select Location", kTextColor, 20.sp,
                          FontWeight.w500))),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(close, width: 10.w))
            ],
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                color: white,
                border: Border.all(width: 1, color: const Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(8.r)),
            child: Row(
              children: [
                SvgPicture.asset(locationpin, width: 17.w),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        "Current Location", kTextColor, 18.sp, FontWeight.w500),
                    SizedBox(height: 6.h),
                    customText("Al-Shuhada St, Al Kuwayt", kTextMedium, 14.sp,
                        FontWeight.w400),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                color: white,
                border: Border.all(width: 1, color: const Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(8.r)),
            child: Row(
              children: [
                SvgPicture.asset("assets/icon/location.svg", width: 17.w),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Select Different Location", kTextColor, 18.sp,
                        FontWeight.w500),
                    SizedBox(height: 6.h),
                    customText("Select location on map", kTextMedium, 14.sp,
                        FontWeight.w400),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 28.h),
          SizedBox(
              height: 52.h,
              width: 1.sw,
              child: DefaultButton(
                  text: "Confirm",
                  press: () {
                    Get.back();
                    Get.bottomSheet(const SelectStore());
                  })),
          SizedBox(height: 14.h),
        ],
      ),
    );
  }
}

class SelectStore extends StatelessWidget {
  const SelectStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 424.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r), topLeft: Radius.circular(15.r)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Center(
                      child: customText(
                          "Select store", kTextColor, 20.sp, FontWeight.w500))),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(close, width: 10.w))
            ],
          ),
          SizedBox(height: 15.h),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Container(
                          height: 76.h,
                          margin: EdgeInsets.only(bottom: 15.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 13.h),
                          decoration: BoxDecoration(
                              color: white,
                              border: Border.all(
                                  width: 1, color: const Color(0xFFF1F1F1)),
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  customText("McDonald's (Salmiya)", kTextColor,
                                      14.sp, FontWeight.w500),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(locationsmall,
                                          width: 8.w),
                                      SizedBox(width: 6.w),
                                      customText("3 km", kPrimaryColor, 12.sp,
                                          FontWeight.w400)
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 3.h),
                              Row(
                                children: [
                                  SvgPicture.asset(walkicon, width: 13.w),
                                  SizedBox(width: 6.w),
                                  customText("Walk-thru", kTextMedium, 12.sp,
                                      FontWeight.w400),
                                  SizedBox(width: 12.w),
                                  SvgPicture.asset(caricon, width: 13.w),
                                  SizedBox(width: 6.w),
                                  customText("Drive-Thru", kTextMedium, 12.sp,
                                      FontWeight.w400),
                                ],
                              ),
                              SizedBox(height: 3.h),
                              Row(
                                children: [
                                  SvgPicture.asset(timeicon, width: 13.w),
                                  SizedBox(width: 6.w),
                                  customText("30 mins", kTextMedium, 12.sp,
                                      FontWeight.w400),
                                  const Spacer(),
                                  customText("9am to 9pm", kTextMedium, 12.sp,
                                      FontWeight.w400)
                                ],
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 76.h,
                            width: 1.sw,
                            margin: EdgeInsets.only(bottom: 15.h),

                            decoration: BoxDecoration(
                                //color: Colors.black.withOpacity(.5),
                                borderRadius: BorderRadius.circular(8.r)),
                            // child: Center(
                            //     child: customText(
                            //         "Busy", white, 18.sp, FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
                decoration: BoxDecoration(
                    color: white,
                    border:
                        Border.all(width: 1, color: const Color(0xFFF1F1F1)),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText("McDonald's (Salmiya)", kTextColor, 14.sp,
                            FontWeight.w500),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(locationsmall, width: 8.w),
                            SizedBox(width: 6.w),
                            customText(
                                "3 km", kPrimaryColor, 12.sp, FontWeight.w400)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        SvgPicture.asset(walkicon, width: 13.w),
                        SizedBox(width: 6.w),
                        customText(
                            "Walk-thru", kTextMedium, 12.sp, FontWeight.w400),
                        SizedBox(width: 12.w),
                        SvgPicture.asset(caricon, width: 13.w),
                        SizedBox(width: 6.w),
                        customText(
                            "Drive-Thru", kTextMedium, 12.sp, FontWeight.w400),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        SvgPicture.asset(timeicon, width: 13.w),
                        SizedBox(width: 6.w),
                        customText(
                            "30 mins", kTextMedium, 12.sp, FontWeight.w400),
                        const Spacer(),
                        customText(
                            "9am to 9pm", kTextMedium, 12.sp, FontWeight.w400)
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 73.h,
                  width: 1.sw,
                  margin: EdgeInsets.only(bottom: 15.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 13.h),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.5),
                      border:
                          Border.all(width: 1, color: const Color(0xFFF1F1F1)),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                      child: customText("Busy", white, 18.sp, FontWeight.w500)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
