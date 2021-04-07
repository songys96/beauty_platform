import 'package:flutter/material.dart';
import 'package:men_in_beauty/apis/magazine_api.dart';
import 'package:men_in_beauty/blocs/magazine_bloc.dart';

class MagazineProvider extends InheritedWidget{

  final MagazineBloc bloc;


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  //todo: 이거 아직 이해 못함
  // of method를 이용하여 상위 위젯에 접근할 수 있
  static MagazineBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MagazineProvider>().bloc;
  }

  MagazineProvider({Key key, MagazineBloc bloc, Widget child})
  : this.bloc = bloc ?? MagazineBloc(MagazineAPI()),
  super(child: child, key: key);
}