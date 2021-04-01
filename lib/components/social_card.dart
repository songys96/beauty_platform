import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:men_in_beauty/size_config.dart';

class SocialCard extends StatelessWidget {

  final String icon;
  final Function press;

  const SocialCard({Key key, this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: getProportionScreenWidth(0.12),
          width: getProportionScreenWidth(0.12),
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon)
        ),
      ),
    );
  }
}
