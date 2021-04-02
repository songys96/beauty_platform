import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:men_in_beauty/constants.dart';

import '../../size_config.dart';
import 'components/app_bar_titles.dart';
import 'components/custom_bottom_nav_bar.dart';
import 'components/screen_routes.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: IndexedStack(index: _screenIndex, children: appBarTitles,)),
      body: IndexedStack(
        index: _screenIndex,
        children: screenRoute,
      ),
      bottomNavigationBar: CustomBottomNavBar(callback: getBottomNavIndex,),
    );
  }

  getBottomNavIndex(int bottomNavIndex){
    setState(() {
      _screenIndex = bottomNavIndex;
    });
  }
}
