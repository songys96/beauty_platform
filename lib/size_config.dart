import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionScreenHeight(double inputHeight){
  // 화면 전체에 대한 비율비로 설정
  // inputHeight < 1
  double screenHeight = SizeConfig.screenHeight;
  return inputHeight * screenHeight;
}

double getProportionScreenWidth(double inputWidth){
  // 화면 전체에 대한 비율비로 설정
  // inputHeight < 1
  double screenWidth = SizeConfig.screenWidth;
  return inputWidth * screenWidth;
}