/// Flutter code sample for AnimatedAlign

// The following code implements the [AnimatedAlign] widget, using a [curve] of
// [Curves.fastOutSlowIn].

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        // 구조에 대한 시각화 레이아웃
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                selected ? Alignment(-1, -1) : Alignment.bottomLeft, //이동 방향
            duration: const Duration(seconds: 2), //반응 시간
            curve: Curves.decelerate, //효과
            child: const FlutterLogo(size: 50.0), //아이콘
          ),
        ),
      ),
    );
  }
}
