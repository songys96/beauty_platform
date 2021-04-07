import 'dart:async';

import 'package:men_in_beauty/apis/magazine_api.dart';
import 'package:men_in_beauty/models/Magazine.dart';

class MagazineBloc {
  final MagazineAPI api;

  StreamController<List<Magazine>> ctrl = StreamController();
  Stream<List<Magazine>> get stream => ctrl.stream;

  MagazineBloc(this.api);

  void dispose(){
    ctrl.close();
  }

  void getMagazines(){
    api.getMagazines().then((magazines){
      ctrl.add(magazines);
    });
  }
}

//Bloc은 항상 provider를 통해서 사용합니다