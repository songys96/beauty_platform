import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:men_in_beauty/models/Magazine.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/magazine_detail.dart';

import 'article_box.dart';
import '../../../../components/custom_magazine_text.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // todo: create Stream class
  final StreamController<Magazine> _streamController = StreamController();

  // todo: create api.dart
  Future<List<Magazine>> _getData() async {
    List<Magazine> list = [];
    await Dio()
        .get("http://localhost:3030/magazines/get")
        .then((res) => res.data)
        .then((magazines) {
      magazines.forEach(
          (magazine_json) => list.add(Magazine.fromJson(magazine_json)));
    }).then((a) => print(list));
    return list;
  }

  // todo: create bloc.dart
  Stream magazineStream(List<Magazine> magazines) {
    magazines.forEach((magazine) async* {
      yield magazine;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TextButton(
            child: Text("submit"),
            onPressed: () {
              _getData().then((value) {
                value.forEach((element) {
                  _streamController.add(element);
                });
              });
            },
          ),
        ),
        StreamBuilder<Object>(
            stream: _streamController.stream,
            builder: (context, snapshot) {
              return SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, childAspectRatio: 2 / 1.02),
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return ArticleBox(
                      index: index,
                      snapshot: snapshot,
                      press: () {
                        Navigator.pushNamed(context, MagazineDetail.routeName);
                      },
                    );
                  }, childCount: 4));
            })
      ],
    ));
  }
}

List sampleList = [
  ["남성다움의 시작, 샤넬이 바라보는 시장"],
  ["남성 화장품은 무엇이 다른가"],
  ["한국을 넘어 세계에 뻗어가는 K-뷰티"],
  ["화장, 이렇게 시작해 보세요"]
];
