import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          backgroundColor: Color(0xff333333),
          title: GestureDetector(
            onTap: () {
              print("click");
            },
            onLongPress: () {
              print("long pressed!!");
            },
            child: Row(
              children: [Text("양평3가"), Icon(Icons.arrow_drop_down)],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.tune),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "asset/svg/bell.svg",
                  width: 22,
                )),
          ],
        ),
        body: _bodyCont(),
        // color: Color(0xff333333),
        // child: ListView(
        //   children: [
        //     ContList(
        //       title: '에어팟 왼쪽 팝니다',
        //       location: '당산동2가',
        //       price: '90,000원',
        //       favoriteCount: 7,
        //     ),
        //     ContList(
        //       title: '애플워치 SE 셀룰러 팝니다',
        //       location: '강남구 서초동',
        //       price: '500,000원',
        //       favoriteCount: 7,
        //     ),
        //     ContList(
        //       title: '먹태깡 팝니다',
        //       location: '당산동6가',
        //       price: '3,000원',
        //       favoriteCount: 7,
        //     ),
        //     ContList(
        //       title: '자전거 팝니다~',
        //       location: '양천구 목1동',
        //       price: '500,000원',
        //       favoriteCount: 7,
        //     ),
        //     ContList(
        //       title: '닌텐도 스위치 그레이 플박 급처',
        //       location: '양평동',
        //       price: '200,000원',
        //       favoriteCount: 7,
        //     ),
        //   ],
        // ),
        bottomNavigationBar: BtmAppBar(),
      ),
    );
  }
}

Widget _bodyCont() {
  return ListView.separated(
    itemBuilder: (BuildContext _context, int index) {
      return Container(
        child: Row(
        ),
      );
    },
    itemCount: 10,
    separatorBuilder: (BuildContext _context, int index) {
      return Container(height: 1, color: Colors.black.withOpacity(0.4));
    },
  );
}

// class ContList extends StatelessWidget {
//   final String title;
//   final String location;
//   final String price;
//   final int favoriteCount;
//   final bool isFirst; // 첫 번째 위젯 여부

//   const ContList({
//     required this.title,
//     required this.location,
//     required this.price,
//     required this.favoriteCount,
//     this.isFirst = false,
//     Key? key,
//   }) : super(key: key);

//   @override
// build(context) {
//   return Container(
//     height: 150,
//     margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
//     decoration: BoxDecoration(
//       border: isFirst
//           ? Border(
//               top: BorderSide(
//                 color: Colors.grey,
//                 width: 1.0,
//               ),
//             )
//           : Border(
//               bottom: BorderSide(
//                 color: Colors.grey,
//                 width: 1.0,
//               ),
//             ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           width: 120,
//           height: 120,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               image: DecorationImage(
//                 image: AssetImage('dw.jpg'),
//                 fit: BoxFit.cover,
//               )),
//         ),
//         Expanded(
//           //
//           child: Container(
//             padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: TextStyle(color: Colors.white)),
//                 Text(location, style: TextStyle(color: Colors.white)),
//                 Text(price, style: TextStyle(color: Colors.white)),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Icon(
//                         Icons.favorite_border,
//                         color: Colors.white,
//                       ),
//                       Text(favoriteCount.toString(),
//                           style: TextStyle(color: Colors.white))
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }

class BtmAppBar extends StatelessWidget {
  const BtmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
      ),
      child: BottomAppBar(
        color: Color(0xff333333),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Colors.white),
              Icon(Icons.location_city_outlined, color: Colors.white),
              Icon(Icons.map_outlined, color: Colors.white),
              Icon(Icons.chat_bubble_outline_rounded, color: Colors.white),
              Icon(Icons.contacts_outlined, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
