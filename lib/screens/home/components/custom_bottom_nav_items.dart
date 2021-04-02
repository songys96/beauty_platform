import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:men_in_beauty/constants.dart';

List<BottomNavigationBarItem> customBottomNavBarItems = [
  buildBottomNavigationBarItem(
      icon: "assets/icons/Shop Icon.svg", label: "store"),
  buildBottomNavigationBarItem(
      icon: "assets/icons/skincare.svg", label: "shop"),
  buildBottomNavigationBarItem(
      icon: "assets/icons/color-palette.svg", label: "class"),
  buildBottomNavigationBarItem(
      icon: "assets/icons/magazine.svg", label: "magazine"),
  buildBottomNavigationBarItem(
      icon: "assets/icons/User Icon.svg", label: "profile"),
];

buildBottomNavigationBarItem({@required String icon, @required String label}) {
  return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        icon,
        width: 26,
        height: 26,
        color: kPrimaryColor,
      ),
      label: label,
      icon: SvgPicture.asset(
        icon,
        width: 26,
        height: 26,
        color: Colors.grey,
      ));
}
