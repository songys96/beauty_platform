import 'package:flutter/material.dart';
import 'package:men_in_beauty/constants.dart';

List<Widget> appBarTitles = [
  // buildText("  MIMP"),
  Align(alignment: Alignment.center, child: Container(height:50,child: Image.asset("assets/images/logoImage.png", fit: BoxFit.cover,))),
  Align(alignment: Alignment.center, child: Container(height:50,child: Image.asset("assets/images/logoImage.png", fit: BoxFit.cover,))),
  Align(alignment: Alignment.center, child: Container(height:50,child: Image.asset("assets/images/logoImage.png", fit: BoxFit.cover,))),
  Align(alignment: Alignment.center, child: Container(height:50,child: Image.asset("assets/images/logoImage.png", fit: BoxFit.cover,))),
  Align(alignment: Alignment.center, child: Container(height:50,child: Image.asset("assets/images/logoImage.png", fit: BoxFit.cover,))),
  // buildText("SHOP"),
  // buildText("CLASSES"),
  // buildText("MAGAZINE"),
  // buildText("PROFILE"),
];

Widget buildText(String title){
  return Padding(
    padding: const EdgeInsets.only(top:12.0),
    child: SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontWeight: FontWeight.w200,
          fontSize: 32,
          color: Colors.white,
          fontFamily: 'Josefin Sans'
        ),),
      ),
    ),
  );
}
