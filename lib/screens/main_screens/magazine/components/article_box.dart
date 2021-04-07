import 'package:flutter/material.dart';
import 'package:men_in_beauty/screens/main_screens/magazine/components/text_styles.dart';

import 'body.dart';
import '../../../../components/custom_magazine_text.dart';

class ArticleBox extends StatelessWidget {
  const ArticleBox({
    Key key, this.index, this.snapshot, this.press,
  }) : super(key: key);

  final int index;
  final AsyncSnapshot snapshot;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          height: 105,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset("assets/images/articles/article1.jpeg", fit: BoxFit.cover,),
              Positioned(
                left: 20,
                bottom: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(snapshot.data[index].reviewSetKey, style: bannerTitleTextStyle(),),
                    Row(
                      children: [
                        // buildCustomText(sort, 14),
                        SizedBox(width: 6,),
                        Padding(
                          padding: const EdgeInsets.only(top:2.0),
                          child: Text("30views",style: bannerBasicTextStyle()),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}