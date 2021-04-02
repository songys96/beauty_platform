import 'package:flutter/material.dart';
import 'package:men_in_beauty/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: ListView(
        children: [
          Container(
            width: getProportionScreenWidth(0.9),
            height: getProportionScreenWidth(0.9) * 9 / 16,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                child: Image.asset(
                  "assets/images/item6.jpeg",
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 25, 5),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "카르지앙 스튜디오",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "서대문구 신촌동",
                      style: TextStyle(),
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("기초 화장"),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          "15,000원",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("면접 메이크업"),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          "35,000원",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(),

          Container(
            width: getProportionScreenWidth(0.9),
            height: getProportionScreenWidth(0.9) * 9 / 16,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(20)),
                child: Image.asset(
                  "assets/images/item3.jpeg",
                  fit: BoxFit.fill,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 25, 5),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "미켈라니우스 숍",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "마포구 와우산로",
                      style: TextStyle(),
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("기초 화장"),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          "15,000원",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("면접 메이크업"),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          "35,000원",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
