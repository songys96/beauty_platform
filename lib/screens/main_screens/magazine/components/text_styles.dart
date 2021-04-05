import 'package:flutter/material.dart';

TextStyle basicTextStyle() {
  return TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 20,
      decoration: TextDecoration.none);
}

TextStyle bannerBasicTextStyle() {
  return basicTextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      shadows: [Shadow(blurRadius: 2)]);
}

TextStyle bannerTitleTextStyle() {
  return bannerBasicTextStyle().copyWith(fontSize: 20);
}
