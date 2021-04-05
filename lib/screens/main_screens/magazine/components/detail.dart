import 'package:flutter/material.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/components/text_styles.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'box_decorations.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int idx = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text("Magazinny", style: bannerTitleTextStyle()),
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              child: Container(
                color: Colors.red,
              ),
              // child: WebView(
              //   initialUrl: 'https://mylifelibrary.tistory.com/79',
              //   javascriptMode: JavascriptMode.unrestricted,
              // ),
            ),
            Container(
              height: 55,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: double.infinity,
                    child: Center(child: Text("좋아여~b")),
                    decoration: borderDecoration(),
                  )),
                  Expanded(
                      child: Container(
                    height: double.infinity,
                    child: Center(child: Text("퍼가여~b")),
                    decoration: borderDecoration(),
                  ))
                ],
              ),
            ),
            Text("댓글"),
            ReviewListWidget()
          ],
        ),
        bottomNavigationBar: Container(
          decoration: bottomBoxDecoration(),
          child: Row(
            children: [
              Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 14, 10),
                    child: TextField(),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 14, 10),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text("전송"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewListWidget extends StatefulWidget {
  ReviewListWidget({
    Key key,
  }) : super(key: key);

  @override
  _ReviewListWidgetState createState() => _ReviewListWidgetState();
}

class _ReviewListWidgetState extends State<ReviewListWidget> {
  List li = [
    ["aaa", "so good"],
    ["bbb", "bad"],
    ["ccc", "thanks"],
    ["ddd", "so good"],
    ["eee", "bad"],
    ["fff", "thanks"],
    ["ggg", "so good"],
    ["hhh", "bad"],
    ["iii", "thanks"],
    ["eee", "bad"],
    ["fff", "thanks"],
    ["ggg", "so good"],
    ["hhh", "bad"],
    ["iii", "thanks"],
    ["eee", "bad"],
    ["fff", "thanks"],
    ["ggg", "so good"],
    ["hhh", "bad"],
    ["iii", "thanks"],
    ["eee", "bad"],
    ["fff", "thanks"],
    ["ggg", "so good"],
    ["hhh", "bad"],
    ["iii", "thanks"],
    ["eee", "bad"],
    ["fff", "thanks"],
    ["ggg", "so good"],
    ["hhh", "bad"],
    ["iii", "thanks"],
  ];

  int idx = 3;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
        child: Text("hehe"),
        onPressed: () {
          idx=idx+3;
          setState(() {});
        },
      ),
      ...addItems(idx)
    ]);
  }

  addItems(idx) {
    List<Widget> reviews = [];
    for (var i = 0; i < idx; i++) {
      reviews.add(Container(
        child: Row(
          children: [Text(li[i][0]), Text(li[i][1])],
        ),
      ));
    }
    return reviews;
  }
}
