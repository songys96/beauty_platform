import 'package:flutter/material.dart';
import 'package:men_in_beauty/apis/magazine_api.dart';
import 'package:men_in_beauty/blocs/magazine_bloc.dart';
import 'package:men_in_beauty/blocs/magazine_provider.dart';

import 'components/body.dart';

class MagazineScreen extends StatelessWidget {
  static String routeName = "/magazine";

  @override
  Widget build(BuildContext context) {
    return MagazineProvider(
        //
        bloc: MagazineBloc(MagazineAPI()),
        child: Body());
  }
}
