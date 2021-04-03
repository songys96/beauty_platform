import 'package:flutter/material.dart';

class BasicClassBox extends StatelessWidget {
  const BasicClassBox({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.name,
    @required this.price,
    @required this.image,
  }) : super(key: key);

  final String title;
  final String desc;
  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
      child: Row(
        children: [
          ClipRRect(borderRadius:BorderRadius.circular(8),child: SizedBox(height:100, width: 100 ,child: Container(child: Image.asset(image, fit: BoxFit.cover,)))),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(desc),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 6),
                  child: Text(name, style: TextStyle(color: Colors.grey),),
                ),
                Text(price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],
            ),
          )
        ],
      ),
    );
  }
}