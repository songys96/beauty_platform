import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {

  const DefaultButton({
    this.text,
    this.press,
    this.width = double.infinity,
    this.height = 45,
    Key key,
  }) : super(key: key);

  final String text;
  final Function press;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )),
        onPressed: press,
        child: Text(text),
      ),
    );
  }
}

