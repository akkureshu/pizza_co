import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pizza_co/BottomTab/categories_screen.dart';
import 'package:pizza_co/BottomTab/home_screen.dart';
import 'package:pizza_co/BottomTab/more_screen.dart';
import 'package:pizza_co/BottomTab/my_orders.dart';
import 'package:pizza_co/constants.dart';

class MytabBar extends StatefulWidget {
  const MytabBar({Key? key}) : super(key: key);

  @override
  State<MytabBar> createState() => _MytabBar();
}

class _MytabBar extends State<MytabBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const CategoriesScreen(),
    const MyOrders(),
    const MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _showAddDialog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 18.w,
                    height: 18.h,
                    child: SvgPicture.asset("assets/icon/home.svg")),
                label: 'Home',
                activeIcon: SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: SvgPicture.asset(
                    "assets/icon/home.svg",
                    color: kPrimaryColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 18.w,
                    height: 18.h,
                    child: SvgPicture.asset("assets/icon/favorites.svg")),
                label: 'Categories',
                activeIcon: SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: SvgPicture.asset(
                    "assets/icon/favorites.svg",
                    color: kPrimaryColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 18.w,
                    height: 18.h,
                    child: SvgPicture.asset("assets/icon/order.svg")),
                label: 'My Orders',
                activeIcon: SizedBox(
                  width: 18.w,
                  height: 18.h,
                  child: SvgPicture.asset(
                    "assets/icon/order.svg",
                    color: kPrimaryColor,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 8.h, bottom: 8.h),
                    width: 18.w,
                    height: 4.h,
                    child: SvgPicture.asset("assets/icon/more.svg")),
                label: 'More',
                activeIcon: Container(
                  margin: EdgeInsets.only(top: 8.h, bottom: 8.h),
                  width: 18.w,
                  height: 4.h,
                  child: SvgPicture.asset(
                    "assets/icon/more.svg",
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            unselectedFontSize: 12.sp,
            selectedFontSize: 12.sp,
            unselectedItemColor: const Color(0xFFC3C3C3),
            unselectedLabelStyle: TextStyle(fontSize: 12.sp, height: 1.3.h),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: white,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _showAddDialog() {
    Get.dialog(
      AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
        ),
        content: Container(
          height: 360.h,
          width: 328.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(width: 1, color: const Color(0xFF707070)),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: Image.asset(
                  "assets/images/pop.png",
                  fit: BoxFit.fitHeight,
                  height: 360.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15.w, top: 15.h),
                    padding: EdgeInsets.all(8.r),
                    width: 28.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                        color: white.withOpacity(.5),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: SvgPicture.asset(
                      close,
                      color: const Color(0xFF212121),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
