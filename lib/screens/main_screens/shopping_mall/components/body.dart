import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/custom_sliver_title.dart';
import 'package:men_in_beauty/size_config.dart';

import '../../../../components/custom_sliver_app_bar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      MySliverAppBar(sliverTitles: demoSliverTitles(),),
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
                        "${li[index][0]}???",
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
                            "${li[index][1]}???",
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
  [80000, 56000, 30, "?????? ?????? ????????? ?????????"],
  [55000, 49500, 10, "?????? ?????? ????????? ????????? ????????????"],
  [30000, 24000, 20, "?????? ????????? ?????? ????????? ??????"],
  [48000, 36000, 25, "????????? ??????????????? "],
  [50000, 40000, 20, "????????? ?????? ?????? ????????? ??????"],
  [35000, 28000, 20, "????????? ????????? ?????????"]
];

List<Widget> demoSliverTitles(){
  return [
    SliverTitle(title: "?????????", icon: Icons.face),
    SliverTitle(
        title: "????????????", icon: Icons.clean_hands_rounded),
    SliverTitle(title: "?????????", icon: Icons.looks_one),
    SliverTitle(title: "??????", icon: Icons.wb_shade),
    SliverTitle(title: "?????????", icon: Icons.add),
  ];
}