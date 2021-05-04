import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MystatefulWidget createState() => _MystatefulWidget();
}

class _MystatefulWidget extends State<MyStatefulWidget> {
  int _count = 0;
  final GlobalKey _key = GlobalKey();

  _getSizes() {
    RenderObject? renderBox = _key.currentContext.findRenderObject();
    final size = renderBox.size;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Sample Code'),
      ),
      child: ListView(
        children: <Widget>[
          CupertinoButton(
            key: _key,
            onPressed: () => setState(() => _count++),
            child: const Icon(CupertinoIcons.add),
          ),
          Container(
            child: Center(
                child: Text('You have pressed the button $_count times.')),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - ,
          ),
        ],
      ),
    );
  }
}
