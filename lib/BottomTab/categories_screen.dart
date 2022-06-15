import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/components/default_button.dart';

import 'package:pizza_co/components/my_drawer.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/product_deatil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<ProModals> _mlist = [];

  @override
  void initState() {
    super.initState();
    _mlist.add(
      ProModals(
          image:
              'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/pizza/pizza-01.jpg',
          title: 'Margherita',
          category: 'BURGERS (HAND MADE).',
          dec:
              'Lorem Ipsum passages, and more recently with desktop publishing like.Lorem Ipsum passages, and more recently with desktop publishing like.Lorem Ipsum passages, and more recently with desktop publishing like.',
          amonnt: '20.99'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/pizza/pizza-02.jpg',
          title: 'Vegetarian',
          dec:
              'Lorem Ipsum passages, and more recently with desktop publishing like.Lorem Ipsum passages, and more recently with desktop publishing',
          amonnt: '20.99'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/pizza/pizza-03.jpg',
          title: 'Texas BBQ Chicken',
          category: 'BURGERS (HAND MADE).',
          dec:
              'Lorem Ipsum passages, and more recently with desktop publishing like.',
          amonnt: '20.99'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/pizza/pizza-04.jpg',
          title: 'Pepperoni',
          dec:
              'Lorem Ipsum passages, and more recently with desktop publishing like.',
          amonnt: '20.99'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("Categories", kTextColor, 13.sp, FontWeight.w500),
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
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp),
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13.sp),
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/offer.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Todays Offer'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/deals.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Meal Deals'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/pizza.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Pizza'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/breads.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Garlic Breads'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/burgers.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Burger'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/pizza.png", width: 20.w),
                            SizedBox(width: 5.w),
                            const Text('Parmo'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Image.asset("assets/icon/kebabs.png", width: 20.w),
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
                            Image.asset("assets/icon/drink.png", width: 20.w),
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.r),
                              child: CachedNetworkImage(
                                  width: double.infinity,
                                  height: 300.h,
                                  fit: BoxFit.fitWidth,
                                  imageUrl:
                                      'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/banner/banner-01.jpg'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 16.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: const Color(0xFFCCCCCC)),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.r),
                              child: CachedNetworkImage(
                                  width: double.infinity,
                                  height: 300.h,
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      'https://design1.gowebbi.in/restaurant-food-delivery/assets/image/banner/banner-01.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() => ProductDeatil(item: _mlist[index]));
                            },
                            child: productItem(_mlist[index].title,
                                _mlist[index].dec, _mlist[index].image),
                          );
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productItem(String title, dec, images) {
    return Container(
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFCCCCCC)),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: CachedNetworkImage(
                  height: 130.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  imageUrl: images),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 10.h, left: 10.w, right: 10.w, bottom: 0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(title, kTextColor, 14.sp, FontWeight.w500),
                  SizedBox(height: 5.h),
                  customText(
                    dec,
                    kTextMedium,
                    12.sp,
                    FontWeight.w400,
                    maxLine: 1,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
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

class ProModals {
  String title, dec, amonnt;
  String? image, category;
  ProModals(
      {this.image,
      required this.title,
      required this.dec,
      required this.amonnt,
      this.category});
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
