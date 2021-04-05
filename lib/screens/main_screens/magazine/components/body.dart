import 'package:flutter/material.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/magazine_detail.dart';

import 'article_box.dart';
import '../../../../components/custom_magazine_text.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2 / 1.02),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ArticleBox(index: index, title: "It is title", sort:"기초", view: "30 views", press: (){
                Navigator.pushNamed(context, MagazineDetail.routeName);
              },);
            }, childCount: 4))
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