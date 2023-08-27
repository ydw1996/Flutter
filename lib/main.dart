import 'package:flutter/material.dart';
import 'top_bar.dart'; // TopBar 클래스 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TopBar(),
        body: ContList(),
        bottomNavigationBar: BtmAppBar(),
      ),
    );
  }
}

st
class ContList extends StatelessWidget {
  const ContList({super.key});

  @override
  build(context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset('dw.jpg', width: 200),
          Container(
            width: 250,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('자전거 팝니다.', style: TextStyle(color: Colors.blue),),
                Text('양평 3가 영등포구'),
                Text('3000,0원'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite),
                    Text('4')
                  ],
                )
              ],
            ),
          )
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