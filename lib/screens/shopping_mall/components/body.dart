import 'package:flutter/material.dart';
import 'package:men_in_beauty/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: 60,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.face, size: 22,),
                          Text("베이스")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.clean_hands_rounded, size: 22,),
                          Text("스킨케어")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.looks_one, size: 22,),
                          Text("올인원")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.wb_shade, size: 22,),
                          Text("쉐딩")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Icon(Icons.add, size: 22,),
                          Text("더보기")
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            childAspectRatio: 5 / 7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index, ) {
          return buildItem(index);
        }, childCount: 4),
      ),
    ]));
  }

  Padding buildItem(int index) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: getProportionScreenWidth(0.45),
                height: getProportionScreenWidth(0.45),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.3),
                      borderRadius: BorderRadius.circular(4)),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/cosmetics/cos${index+1}.jpeg",
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft, child: Text("에스네이처 아쿠아 스쿠알란")),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${li[index%4][0]}원",
                  style: TextStyle(
                    color: Colors.grey,
                      decoration: TextDecoration.lineThrough, fontSize: 14),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text(
                    "${li[index%4][2]}%",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      "${li[index%4][1]}원",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
              )
            ],
          ),
        ));
  }
}

List li = [[80000,56000,30], [55000, 49500, 10], [30000, 24000, 20], [48000,36000,25]];