import 'package:flutter/material.dart';

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
        // SliverAppBar(
        //   expandedHeight: 60,
        //   floating: true,
        //   flexibleSpace: FlexibleSpaceBar(
        //     background: ,
        //   ),
        //
        // )
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2 / 1.02),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return buildArticle(index: index, title: "It is title", sort:"기초", view: "30 views");
            }, childCount: 4))
      ],
    ));
  }
}

SizedBox buildArticle({int index, String title,  String sort, String view,}) {
  return SizedBox(
      height: 105,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/articles/article$index.jpeg", fit: BoxFit.cover,),
          Positioned(
            left: 20,
            bottom: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCustomText(sampleList[index][0], 20),
                Row(
                  children: [
                    // buildCustomText(sort, 14),
                    SizedBox(width: 6,),
                    Padding(
                      padding: const EdgeInsets.only(top:2.0),
                      child: buildCustomText(view, 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )
  );
}

Text buildCustomText(String text, double size){
  return Text(text, style: TextStyle(
    fontSize: size,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    shadows: [Shadow(blurRadius: 2)]
  ),);
}

List sampleList = [
  ["남성다움의 시작, 샤넬이 바라보는 시장"],
  ["남성 화장품은 무엇이 다른가"],
  ["한국을 넘어 세계에 뻗어가는 K-뷰티"],
  ["화장, 이렇게 시작해 보세요"]
];