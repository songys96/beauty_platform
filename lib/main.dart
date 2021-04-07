import 'package:flutter/material.dart';
import 'package:men_in_beauty/apis/magazine_api.dart';
import 'package:men_in_beauty/blocs/magazine_bloc.dart';
import 'package:men_in_beauty/blocs/magazine_provider.dart';

import 'routes.dart';
import 'screens/main_screens/home/home_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MagazineProvider(
      bloc: MagazineBloc(MagazineAPI()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        routes: routes,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }


}
