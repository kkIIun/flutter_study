import 'package:flutter/cupertino.dart';

class MystatefulWidget extends StatefulWidget {
  const MystatefulWidget({Key? key}) : super(key: key);

  @override
  _MystatefulWidget createState() => _MystatefulWidget;
}

class _MystatefulWidget extends State<MystatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Sample Code'),
      ),
      child: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () => setState(() => _count++),
            child: const Icon(CupertinoIcons.add),
          ),
          Center(
            child: Text('You have pressed the button $_count times.'),
          )
        ],
      )
    )
  }
}
