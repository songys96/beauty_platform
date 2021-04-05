import 'package:flutter/material.dart';
import 'package:men_in_beauty/size_config.dart';

import 'sliver_title.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.white,
          expandedHeight: 60,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: buildSliverTitles()
            ),
          )),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 5 / 7.1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        delegate: SliverChildBuilderDelegate((
          BuildContext context,
          int index,
        ) {
          return buildItem(index);
        }, childCount: 6),
      ),
    ]));
  }

  List<Widget> buildSliverTitles(){
    return [
      SliverTitle(title: "베이스", icon: Icons.face),
      SliverTitle(
          title: "스킨케어", icon: Icons.clean_hands_rounded),
      SliverTitle(title: "올인원", icon: Icons.looks_one),
      SliverTitle(title: "쉐딩", icon: Icons.wb_shade),
      SliverTitle(title: "더보기", icon: Icons.add),
    ];
  }

  Padding buildItem(int index) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: getProportionScreenWidth(0.45),
                height: getProportionScreenWidth(0.45),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(4)),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/cosmetics/cos${index + 1}.jpeg",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 10, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(li[index][3]),
                      Text(
                        "${li[index][0]}원",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14),
                      ),
                      Row(children: [
                        Text(
                          "${li[index][2]}%",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Text(
                            "${li[index][1]}원",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

List li = [
  [80000, 56000, 30, "파워 옴므 올인원 클리닉"],
  [55000, 49500, 10, "다슈 비타 플렉스 올인원 바디워시"],
  [30000, 24000, 20, "만요 민감성 피부 저자극 로션"],
  [48000, 36000, 25, "비레디 파운데이션 "],
  [50000, 40000, 20, "우르오 헤어 케어 저자극 샴푸"],
  [35000, 28000, 20, "그라펜 포마드 시워터"]
];
