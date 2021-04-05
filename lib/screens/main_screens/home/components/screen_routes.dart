import 'package:flutter/material.dart';
import 'package:men_in_beauty/screens/main_screens/classes/classes_screen.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/magazine_screen.dart';
import 'package:men_in_beauty/screens/main_screens/shopping_mall/shopping_mall_screen.dart';
import 'package:men_in_beauty/screens/main_screens/store/store_screen.dart';

List<Widget> screenRoute = [
  StoreScreen(),
  ShoppingMallScreen(),
  ClassesScreen(),
  MagazineScreen(),
  Container(color: Colors.yellow,),
];