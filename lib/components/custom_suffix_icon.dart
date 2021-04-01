import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionScreenWidth(0.05),
        getProportionScreenWidth(0.05),
        getProportionScreenWidth(0.05),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionScreenWidth(0.05),
      ),
    );
  }
}
