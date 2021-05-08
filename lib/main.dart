import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AnimatedAlign.dart';
import 'FadeTransition.dart';
import 'mymainpage.dart';

void main() => runApp(MyApp(
    // initialRoute: '/',
    // routes: {
    //   '/': (context) => MyStatefulWidget1(),
    //   '/second': (context) => MyStatefulWidget2(),
    // },
    ));

// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
