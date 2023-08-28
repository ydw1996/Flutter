import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("양평3가", style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.doorbell),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            ContList(
              title: '에어팟 왼쪽 팝니다',
              location: '당산동2가',
              price: '90,000원',
              favoriteCount: 7,
            ),
            ContList(
              title: '애플워치 SE 셀룰러 팝니다',
              location: '강남구 서초동',
              price: '500,000원',
              favoriteCount: 7,
            ),
            ContList(
              title: '먹태깡 팝니다',
              location: '당산동6가',
              price: '3,000원',
              favoriteCount: 7,
            ),
            ContList(
              title: '자전거 팝니다~',
              location: '양천구 목1동',
              price: '500,000원',
              favoriteCount: 7,
            ),
            ContList(
              title: '닌텐도 스위치 그레이 플박 급처',
              location: '양평동',
              price: '200,000원',
              favoriteCount: 7,
            ),
          ],
        ),
        bottomNavigationBar: BtmAppBar(),
      ),
    );
  }
}

class ContList extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  final int favoriteCount;

  const ContList({
    required this.title,
    required this.location,
    required this.price,
    required this.favoriteCount,
    Key? key,
}) : super(key: key);

  @override
  build(context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('dw.jpg'),
              fit: BoxFit.cover,
            )
          ),
          ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.blue),),
                Text(location),
                Text(price),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite),
                    Text(favoriteCount.toString())
                  ],
                )
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}

class BtmAppBar extends StatelessWidget {
  const BtmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call),
              Icon(Icons.speaker_notes),
              Icon(Icons.contacts),
            ],
          ),
        )
    );
  }
}