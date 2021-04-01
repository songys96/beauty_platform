import 'package:flutter/widgets.dart';
import 'package:men_in_beauty/screens/complete_profile/complete_profile_screen.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';
import 'package:men_in_beauty/screens/sign_in/sign_in_screen.dart';
import 'package:men_in_beauty/screens/sign_up/sign_up_screen.dart';
import 'package:men_in_beauty/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  SignInScreen.routeName : (context) => SignInScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen(),
};