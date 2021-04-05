import 'package:flutter/material.dart';

class SliverTitle extends StatelessWidget {
  const SliverTitle({
    Key key, this.title, this.icon, this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                icon,
                size: 22,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}