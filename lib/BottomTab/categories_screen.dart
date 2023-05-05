import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:pizza_co/components/default_button.dart';
import 'package:pizza_co/constants.dart';
import 'package:pizza_co/pages/cart_screen.dart';
import 'package:pizza_co/pages/product_deatil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final ScrollController _scrollController = ScrollController();

  final List<ProModals> _mlist = [];

  @override
  void initState() {
    super.initState();
    _mlist.add(
      ProModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211217035040447.jpg',
          title: 'Margherita',
          category: 'Pizza',
          dec: 'Original tomato and cheese pizza',
          amonnt: '7.50'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040201200.jpg',
          title: 'Al-Funghi Pizza',
          category: 'Pizza',
          dec: 'Mushrooms',
          amonnt: '7.90'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040320780.jpg',
          title: 'London Pizza',
          category: 'Pizza',
          dec:
              'Lorem Ipsum passages, and more recently with desktop publishing like.',
          amonnt: '7.90'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040417284.jpg',
          title: 'Vegetarian Pizza',
          category: 'Pizza',
          dec: 'Peppers, mushrooms, onions & sweetcorn',
          amonnt: '7.90'),
    );
    _mlist.add(
      ProModals(
          image:
              'https://newcastle.thepizzacompany.co.uk/DataImages/Products/item_0_20211222040456270.jpg',
          title: 'Ham Pizza',
          category: 'Pizza',
          dec: 'Peppers, mushrooms, onions & sweetcorn',
          amonnt: '7.90'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: white,
              pinned: false,
              //floating: true,
              expandedHeight: 220,
              collapsedHeight: 60,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                background: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        CachedNetworkImage(
                          width: 1.sw,
                          fit: BoxFit.cover,
                          height: 180.h,
                          imageUrl:
                              'https://d4t7t8y8xqo0t.cloudfront.net/app/eazymedia/restaurant%2F110025%2Frestaurant020160519143002.jpg',
                        ),
                        SizedBox(height: 55.h),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 45.h),
                        child: Row(
                          children: [
                            Container(
                              width: 30.w,
                              height: 30.w,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: 30.w,
                              height: 30.w,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: IconButton(
                                  onPressed: () {
                                    Get.to(() => const CartScreen());
                                  },
                                  icon: SvgPicture.asset(
                                    carticon,
                                    color: kPrimaryColor,
                                    width: 20.w,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.h,
                      child: Container(
                        width: .9.sw,
                        margin: EdgeInsets.symmetric(horizontal: .05.sw),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: white,
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFCCCCCC).withOpacity(.6),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Hero(
                                  tag: Text,
                                  child: customText("Westgate", kTextColor,
                                      14.sp, FontWeight.w500),
                                ),
                                customText(
                                    "Open", green, 12.sp, FontWeight.w400)
                              ],
                            ),
                            SizedBox(height: 7.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 5.w),
                                SvgPicture.asset(timeicon,
                                    width: 12.w, color: kPrimaryColor),
                                SizedBox(width: 5.w),
                                customText("20 mins", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                                SizedBox(width: 5.w),
                                const Icon(Icons.circle,
                                    size: 3, color: Color(0xFFC4C4C4)),
                                SizedBox(width: 5.w),
                                SvgPicture.asset(locationpin,
                                    width: 12.w, color: kPrimaryColor),
                                SizedBox(width: 5.w),
                                customText("1.3 km", const Color(0xFFABABAB),
                                    12.sp, FontWeight.w400),
                                const Spacer(),
                                SvgPicture.asset(walkicon, width: 18.w),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            customText("498 Westgate Road, Newcastle, NE4 9HD",
                                kTextMedium, 12.sp, FontWeight.w400),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: DefaultTabController(
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
                                left: 14.w, right: 14.w, top: 14.h),
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
                                left: 14.w, right: 14.w, top: 14.h),
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
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
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
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
                        itemCount: _mlist.length,
                        itemBuilder: (context, index) {
                          return productItem(_mlist[index].title,
                              _mlist[index].dec, _mlist[index].image);
                        }),
                    ListView.builder(
                        padding:
                            EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
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
}

Widget productItem(String title, dec, images) {
  return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8.r),
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
                customText(dec, kTextMedium, 12.sp, FontWeight.w400,
                    maxLine: 1),
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

class ProModals {
  String title, category, amonnt;
  String? image, dec;
  ProModals(
      {this.image,
      required this.title,
      this.dec,
      required this.amonnt,
      required this.category});
}
