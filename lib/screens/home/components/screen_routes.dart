import 'package:flutter/material.dart';
import 'package:men_in_beauty/routes.dart';
import 'package:men_in_beauty/screens/shopping_mall/shopping_mall_screen.dart';
import 'package:men_in_beauty/screens/store/store_screen.dart';

List<Widget> screenRoute = [
  StoreScreen(),
  ShoppingMallScreen(),
  Container(color: Colors.blue,),
  Container(color: Colors.yellow,),
  Container(color: Colors.yellow,),
];