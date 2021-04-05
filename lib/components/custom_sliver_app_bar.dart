import 'package:flutter/material.dart';
import 'package:men_in_beauty/theme.dart';

import 'custom_sliver_title.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    Key key, this.sliverTitles,
  }) : super(key: key);

  final List<Widget> sliverTitles;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.white,
        expandedHeight: 60,
        floating: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: sliverTitles
          ),
        )
    );
  }
}

