import 'package:flutter/material.dart';

class RecommendClassBox extends StatelessWidget {
  const RecommendClassBox({
    Key key, this.image, this.title, this.author, this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String author;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,8,18,8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 135,
              width: 330,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 6, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 2,),
                Text(author, style: TextStyle(color: Colors.grey[600]),),
                SizedBox(height: 2,),
                Text(price, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}

