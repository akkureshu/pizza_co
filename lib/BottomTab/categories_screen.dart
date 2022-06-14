import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pizza_co/components/default_button.dart';

import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("Categories", kTextColor, 13.sp, FontWeight.w500),
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
          child: DefaultTabController(
              length: 9,
              child: Column(
                children: [
                  Container(
                    color: kPrimaryColor,
                    child: TabBar(
                        isScrollable: true,
                        labelColor: white,
                        unselectedLabelColor: const Color(0xFF505050),
                        indicatorColor: const Color.fromARGB(255, 85, 112, 37),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13.sp),
                        unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13.sp),
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/offer.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Todays Offer'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/deals.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Meal Deals'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/pizza.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Pizza'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/breads.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Garlic Breads'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/burgers.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Burger'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/pizza.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Parmo'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/kebabs.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Kebabs'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/desserts.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Desserts'),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Image.asset("assets/icon/drink.png",
                                    width: 20.w),
                                SizedBox(width: 5.w),
                                const Text('Drinks'),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                        ListView.builder(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return productItem();
                            }),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }

  Widget productItem() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFCCCCCC)),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: Image.asset(
                "assets/images/pizza-01.jpeg",
                width: .9.sw,
                height: 120.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText("Margherita", kTextColor, 14.sp, FontWeight.w500),
                  SizedBox(height: 5.h),
                  customText(
                      "Lorem Ipsum passages, and more recently with desktop publishing like.",
                      kTextMedium,
                      12.sp,
                      FontWeight.w400,
                      maxLine: 2),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("£20.99", const Color(0xFF212121), 15.sp,
                          FontWeight.w700),
                      DefaultButtonsmall(text: "Add", press: () {})
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}




// import '../constants.dart';

// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({Key? key}) : super(key: key);

//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   final List<Map<String, String>> categorydata = [
//     {
//       "title": "Pizza",
//       "image": 'assets/images/pizza.jpg',
//     },
//     {
//       "title": "Garlic Breads",
//       "image": 'assets/images/breads.jpg',
//     },
//     {
//       "title": "Burger",
//       "image": 'assets/images/burger.jpg',
//     },
//     {
//       "title": "Parmo",
//       "image": 'assets/images/parmos.jpg',
//     },
//     {
//       "title": "Kebabs",
//       "image": 'assets/images/kebabs.jpg',
//     },
//     {
//       "title": "Desserts",
//       "image": 'assets/images/desserts.jpg',
//     },
//     {
//       "title": "Drinks",
//       "image": 'assets/images/drinks.jpg',
//     },
//     {
//       "title": "Side Dishes",
//       "image": 'assets/images/SideDishes.jpg',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       appBar: AppBar(
//         title: customText("Categories", kTextColor, 13.sp, FontWeight.w500),
//       ),
//       drawer: const MyDrawer(),
//       body: SafeArea(
//         child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 200,
//                 //  childAspectRatio: 3,
//                 crossAxisSpacing: 12,
//                 mainAxisSpacing: 12),
//             itemCount: categorydata.length,
//             padding: EdgeInsets.only(
//                 left: 18.w, right: 18.w, top: 18.h, bottom: 18.h),
//             shrinkWrap: true,
//             itemBuilder: ((context, index) {
//               return Container(
//                 margin: EdgeInsets.only(right: 18.w),
//                 child: InkWell(
//                   onTap: () {},
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(6.r),
//                         child: Image.asset(
//                           categorydata[index]["image"]!,
//                           width: .5.sw,
//                           height: 120.h,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       SizedBox(height: 6.h),
//                       customText(categorydata[index]["title"]!,
//                           const Color(0xFF4B4B4B), 14.sp, FontWeight.w500)
//                     ],
//                   ),
//                 ),
//               );
//             })),
//       ),
//     );
//   }
// }
