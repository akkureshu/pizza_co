import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

const kPrimaryColor = Color(0xFF9cca4e);
const kBgColor = Color(0xFF62707c);
const kTextColor = Color(0xFF2D2D2D);
const kTextMedium = Color(0xFF4B4B4B);
const white = Color(0xFFFFFFFF);
const border = Color(0xFFDBDBDB);
const green = Color(0xFF3ADC00);

const add = 'assets/images/add.jpg';
const addone = 'assets/images/add1.jpg';
const addto = 'assets/images/add2.jpg';
// const rightarrow = 'assets/icon/rightarrow.svg';
const staricon = 'assets/icon/star.svg';
const timeicon = 'assets/icon/time.svg';
const locationpin = 'assets/icon/locationpin.svg';
const caricon = 'assets/icon/car.svg';
const walkicon = 'assets/icon/walkicon.svg';
const close = 'assets/icon/close.svg';
const locationsmall = 'assets/icon/locationsmall.svg';
const carticon = 'assets/icon/cart.svg';
// const hearticon = 'assets/icon/fillheart.svg';
// const usericon = 'assets/icon/user.svg';
// const lefticon = 'assets/icon/leftarrow.svg';
// const bellicon = 'assets/icon/bell.svg';
// const walleticon = 'assets/icon/wallet.svg';
// const pointicon = 'assets/icon/point.svg';
// const car = 'assets/icon/car1.svg';
// const helpchat = 'assets/icon/h-chat.svg';
// const languageicon = 'assets/icon/language.svg';
// const logouticon = 'assets/icon/logout.svg';
// const addicon = 'assets/icon/add.svg';
// const minusicon = 'assets/icon/minus.svg';
// const infoicon = 'assets/icon/info2.svg';
// const cashin = 'assets/icon/cashin.png';
// const cashout = 'assets/icon/cashout.png';
// const downarrow = 'assets/icon/downarrowo.svg';
// const right = 'assets/icon/righttick.svg';
// const cancel = 'assets/icon/cancel.svg';
// const direction = 'assets/icon/direction.svg';
// const reorder = 'assets/icon/reorder.svg';
// const walletoutline = 'assets/icon/wallet2.svg';

//-------------------------Custom Text--------------------

Widget customText(String text, Color textColor, double size, fontWeight,
    {int maxLine = 1, TextAlign align = TextAlign.left}) {
  return Text(
    text,
    textAlign: align,
    maxLines: maxLine,
    style: TextStyle(color: textColor, fontSize: size, fontWeight: fontWeight),
  );
}

//-------------------------input decoration--------------------

InputDecoration myInputDecoration(
    {required String hintText, Widget? suffixIcon, bool isLabel = true}) {
  return InputDecoration(
    // hintText: hintText,
    alignLabelWithHint: true,
    labelText: isLabel ? hintText : null,
    labelStyle: const TextStyle(
        color: Color(0xFF82909B), fontSize: 12, fontFamily: "OpenSans"),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 20,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: border,
      ),
      gapPadding: 10,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      gapPadding: 10,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: border,
      ),
      gapPadding: 10,
    ),
    suffixIcon: suffixIcon,
  );
}

//-------------------------Search Box--------------------

Widget searchbox({required String hintText, required Function()? onTap}) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h, top: 5.h),
    decoration: BoxDecoration(
        color: white,
        border: Border.all(width: 1, color: const Color(0xFFC3C3C3)),
        borderRadius: BorderRadius.circular(8.r)),
    child: Form(
      child: Row(
        children: [
          IconButton(
              onPressed: onTap,
              icon: SvgPicture.asset("assets/icon/search.svg",
                  color: kPrimaryColor, width: 16.w, height: 16.h)),
          Expanded(
            child: TextFormField(
              //autofocus: true,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 11.h,
                ),
                hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: kPrimaryColor.withOpacity(.8),
                    fontWeight: FontWeight.w500),
              ),
              style: TextStyle(
                  color: const Color(0xFFFCA485),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ),
  );
}

//-------------------------Heading part--------------------

Widget header({required String text, required Function()? press}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customText(text, kTextColor, 18.sp, FontWeight.w500),
        // IconButton(
        //   onPressed: press,
        //   icon: SvgPicture.asset(rightarrow),
        // )
      ],
    ),
  );
}

//-------------------------Back Button --------------------

IconButton backbutton() {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: const Icon(Icons.arrow_back_ios),
  );
}

//-------------------------input decoration--------------------

InputDecoration droupdown(
    {required String hintText, Widget? suffixIcon, bool isLabel = true}) {
  return InputDecoration(
    // hintText: hintText,
    alignLabelWithHint: true,
    hintText: hintText,
    // labelText: isLabel ? hintText : null,
    hintStyle: const TextStyle(
      color: kTextColor,
      fontSize: 13,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 11,
      vertical: 10,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(
        color: Color(0xFFF1F1F1),
      ),
      gapPadding: 10,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      gapPadding: 10,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6.r),
      borderSide: const BorderSide(
        color: border,
      ),
      gapPadding: 10,
    ),
    suffixIcon: suffixIcon,
  );
}
