import 'package:flutter/material.dart';
import 'package:men_in_beauty/components/default_button.dart';
import 'package:men_in_beauty/routes.dart';
import 'package:men_in_beauty/screens/home/home_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to MENinBEAUTY", "image": "assets/images/splash_1.png"},
    {
      "text": "We help Men to be Better!",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]["text"],
                      image: splashData[index]["image"]))),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                        text: "Continue",
                        width: getProportionScreenWidth(0.45),
                        press: () {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        }),
                    Spacer()
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 3),
      height: 8,
      width: currentPage == index ? 20 : 8,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.red : Colors.black,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
