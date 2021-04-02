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
          buildContent(image: "assets/images/item6.jpeg", title: "카르지앙 스튜디오", place: "서대문구 신촌동", price1: "15,000원", price2: "35,000원"),
          SizedBox(height: 10,),
          Divider(),
          buildContent(image: "assets/images/item3.jpeg", title: "미켈라니우스 숍", place: "마포구 와우산로", price1: "18,000원", price2: "32,000원"),
          SizedBox(height: 10,),
          Divider(),
          buildContent(image: "assets/images/item2.jpeg", title: "미켈라니우스 숍", place: "마포구 와우산로", price1: "18,000원", price2: "32,000원"),
        ],
      ),
    ));
  }

  Column buildContent({String image, String title, String place, String price1, String price2}) {
    return Column(

          children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            width: getProportionScreenWidth(0.9),
            height: getProportionScreenWidth(0.9) * 9 / 16,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 25, 5),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    place,
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
                        price1,
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
                        price2,
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


        ],);
  }
}
