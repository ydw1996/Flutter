import 'package:flutter/material.dart'; // 패키지 가져옴

void main() {
  runApp(const MyApp()); // 앱 시작해주세요
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
        body: ContList(),
        bottomNavigationBar: BtmAppBar(),
      ),
    );
  }
}

class ContList extends StatelessWidget {
  const ContList({super.key});

  @override // 먼저 쓰라고 명령
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
