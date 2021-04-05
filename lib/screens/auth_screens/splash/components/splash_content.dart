import 'package:flutter/material.dart';

import '../../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    this.text,
    this.image,
    Key key,
  }) : super(key: key);

  final text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "MENinBEAUTY",
          style: TextStyle(
              fontSize: getProportionScreenWidth(0.1),
              fontWeight: FontWeight.bold),
        ),
        Text(text),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionScreenHeight(0.3),
          width: getProportionScreenWidth(0.6),
        )
      ],
    );
  }
}
