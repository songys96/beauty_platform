import 'package:flutter/material.dart';

import 'body.dart';
import 'custom_magazine_text.dart';

class ArticleBox extends StatelessWidget {
  const ArticleBox({
    Key key, this.index, this.title, this.sort, this.view,
  }) : super(key: key);

  final int index;
  final String title;
  final String sort;
  final String view;

  @override
  Widget build(BuildContext context) {
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
                  CustomMagazineText(sampleList[index][0], 20),
                  Row(
                    children: [
                      // buildCustomText(sort, 14),
                      SizedBox(width: 6,),
                      Padding(
                        padding: const EdgeInsets.only(top:2.0),
                        child: CustomMagazineText(view, 14),
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
}