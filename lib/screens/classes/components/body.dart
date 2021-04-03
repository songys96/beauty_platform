import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:men_in_beauty/size_config.dart';

import 'basic_class_box.dart';
import 'recommend_class_box.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 추천클래스 타이틀
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 8, 8),
            child: Text(
              "추천 클래스",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          // 추천 클래스
          SizedBox(
            height: 230,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RecommendClassBox(image: "assets/images/classes/class1.png",title:"남성의 화장, 이제는 선택이 아니라 필수", author: "Colten Song", price: "55,000원",),
                RecommendClassBox(image: "assets/images/classes/class1.png",title:"남성의 화장, 이제는 선택이 아니라 필수", author: "Colten Song", price: "55,000원",),
              ],
            ),
          ),

          // 모든 강좌 타이틀
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 8, 8),
            child: Text(
              "모든 강좌",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          
          // 모든 강좌
          BasicClassBox(title: "기초 베이스 입문 과정", desc: "자신에 맞는 색상 구분과 기초 화장 순서 안내", name: "Chaewon Park", price: "13,000원", image: "assets/images/classes/class_basic0.jpeg"),
          BasicClassBox(title: "화장의 시작은 눈썹부터", desc: "골격에 따른 눈썹 화장법과 색상을 알려드립니다", name: "Colten Song", price: "11,000원", image: "assets/images/classes/class_basic1.jpeg"),
          BasicClassBox(title: "K-Beauty, 아름다움의 시작", desc: "화장 순서부터 피부 민감도에 맞는 선택까지", name: "Eric You", price: "13,000원", image: "assets/images/classes/class_basic2.jpeg"),
          BasicClassBox(title: "화장품으로 피부관리 시작하기", desc: "피부도 매력이다. 피부관리의 방법을 소개합니다", name: "박채", price: "13,000원", image: "assets/images/classes/class_basic5.jpeg"),
        ],
      ),
    ));
  }
}



