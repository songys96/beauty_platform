import 'package:flutter/material.dart';

List<Widget> appBarTitles = [
  buildText("메이크업"),
  buildText("화장품"),
  buildText("클래스"),
  buildText("매거진"),
  buildText("프로필"),
];

Text buildText(String title){
  return Text(title, style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20
  ),);
}
