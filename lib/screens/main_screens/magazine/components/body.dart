import 'dart:async';

import 'package:flutter/material.dart';
import 'package:men_in_beauty/blocs/magazine_provider.dart';
import 'package:men_in_beauty/models/Magazine.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/magazine_detail.dart';

import 'article_box.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final magazineBloc = MagazineProvider.of(context);

    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TextButton(
            child: Text("submit"),
            onPressed: () {
              magazineBloc.getMagazines();
            },
          ),
        ),
        StreamBuilder<Object>(
            // stream: _streamController.stream,
            stream: magazineBloc.stream,
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData)
                return SliverToBoxAdapter(child: Text("no data"));
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, idx) => ArticleBox(index:idx, snapshot:snapshot, press: () {
                      Navigator.pushNamed(context, MagazineDetail.routeName);
                    },),
                    childCount: snapshot.data.length),
              );
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
