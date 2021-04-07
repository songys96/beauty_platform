import 'package:dio/dio.dart';
import 'package:men_in_beauty/models/Magazine.dart';

class MagazineAPI {
  // todo: create api.dart
  Future<List<Magazine>> getMagazines() async {
    List<Magazine> list = [];
    await Dio()
        .get("http://localhost:3030/magazines/get")
        .then((res) => res.data)
        .then((magazines) {
      magazines.forEach((magazine_json) {
        list.add(Magazine.fromJson(magazine_json));
      });
    });
    return list;
  }
}

