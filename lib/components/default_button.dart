import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    this.text,
    this.press,
    this.width=double.infinity,
    Key key,
  }) : super(key: key);

  final String text;
  final Function press;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: getProportionScreenHeight(0.05),
      child: ElevatedButton(
        onPressed: press,
        child: Text(text),
      ),
    );
  }
}

