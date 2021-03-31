import 'package:flutter/widgets.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';
import 'package:men_in_beauty/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
};