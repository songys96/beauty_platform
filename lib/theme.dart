import 'package:flutter/material.dart';
import 'package:men_in_beauty/constants.dart';

ThemeData theme() {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: Colors.grey,
    appBarTheme: appBarTheme(),
    textTheme: textTheme()
  );
}

InputDecorationTheme inputDecorationTheme() {
  customOutlineInputBorder({
    Color color = Colors.grey,
    double width = 1.0
  }) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color, width: width),
    );
    return outlineInputBorder;
  }
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // label 위치 수정 가능.
    enabledBorder: customOutlineInputBorder(),
    focusedBorder: customOutlineInputBorder(width: 2),
    border: customOutlineInputBorder(),
    errorBorder: customOutlineInputBorder(color: Colors.red),
  );
}


AppBarTheme appBarTheme(){
  return AppBarTheme(
    centerTitle: true,
    color: kPrimaryColor,
  );
}

TextTheme textTheme(){
  return TextTheme(
    bodyText1: TextStyle()
  );
}