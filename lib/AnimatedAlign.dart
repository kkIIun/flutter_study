import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // 버튼이 아닌 것을 버튼처럼 만들어줌 
      onTap: () {
        // 클릭했을 때
        setState(() {
          selected = !selected; // 눌렀을 때 True,False바뀜
        });
      },
      child: Center(
        child: Container(
          //내부 박스
          width: 250.0, // 너비
          height: 250.0, // 높이
          color: Colors.red, // 색깔
          child: AnimatedAlign(
            alignment:
                selected ? Alignment(0.5, -0.5) : Alignment.bottomLeft, //이동 방향
            duration: const Duration(seconds: 5), //반응 시간
            curve: Curves.decelerate, //효과
            child: const FlutterLogo(size: 50.0), //아이콘
          ),
        ),
      ),
    );
  }
}

