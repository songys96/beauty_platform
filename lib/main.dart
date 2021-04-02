import 'package:flutter/material.dart';
import 'package:men_in_beauty/routes.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';

import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      routes: routes,
      initialRoute: HomeScreen.routeName,
    );
  }


}
