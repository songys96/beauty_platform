import 'package:flutter/material.dart';

Text CustomMagazineText(String text, double size){
  return Text(text, style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      shadows: [Shadow(blurRadius: 2)]
  ),);
}