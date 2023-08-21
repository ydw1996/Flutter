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
        appBar: AppBar(title: Text("헤더"), ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.call),
            Icon(Icons.speaker_notes),
            Icon(Icons.contacts),
          ],
        ),
        bottomNavigationBar: BottomAppBar( child: Text('푸터')),
      )
    );
  }
}

