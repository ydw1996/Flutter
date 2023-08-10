import 'package:flutter/material.dart'; // 패키지 가져옴

void main() {
  runApp(const MyApp()); // 앱 시작해주세요
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(width: 50, height: 50, color: Colors.blue,),
      )
    );

  }
}
