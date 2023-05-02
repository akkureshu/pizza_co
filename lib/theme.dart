import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
   
    fontFamily: "RobotoRegular",
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  // ignore: prefer_const_constructors
  return AppBarTheme(
    elevation: 0,
    backgroundColor: kPrimaryColor,
    iconTheme: const IconThemeData(
      color: white,
    ),
  );
}
