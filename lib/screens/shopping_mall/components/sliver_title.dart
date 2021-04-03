import 'package:flutter/material.dart';

Padding SliverTitle({String title, IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
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
  );
}