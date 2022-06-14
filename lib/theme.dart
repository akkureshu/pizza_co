import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    backgroundColor: white,
    fontFamily: "RobotoRegular",
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  // ignore: prefer_const_constructors
  return AppBarTheme(
    elevation: .5,
    backgroundColor: white,
    iconTheme: const IconThemeData(
      color: Colors.black45,
    ),
  );
}
