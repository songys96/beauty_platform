import 'package:flutter/widgets.dart';

import 'screens/auth_screens/complete_profile/complete_profile_screen.dart';
import 'screens/auth_screens/sign_in/sign_in_screen.dart';
import 'screens/auth_screens/sign_up/sign_up_screen.dart';
import 'screens/auth_screens/splash/splash_screen.dart';
import 'screens/main_screens/classes/classes_screen.dart';
import 'screens/main_screens/home/home_screen.dart';
import 'screens/main_screens/magazine/magazine_screen.dart';
import 'screens/main_screens/shopping_mall/shopping_mall_screen.dart';
import 'screens/main_screens/store/store_screen.dart';


final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  SignInScreen.routeName : (context) => SignInScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen(),

  //PageScreens
  StoreScreen.routeName : (context) => StoreScreen(),
  ShoppingMallScreen.routeName : (context) => ShoppingMallScreen(),
  ClassesScreen.routeName : (context) => ClassesScreen(),
  MagazineScreen.routeName : (context) => MagazineScreen(),
};