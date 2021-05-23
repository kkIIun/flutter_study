import 'package:flutter/material.dart';
import 'List.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _count = 0;
  final List<String> _lists = <String>['데이트 뭐할까 ?', '뭐 먹을까 ?', '뭐 부를까 ?'];

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () => setState(() => _count++),
            icon: Transform(
              transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
              child: const Icon(
                Icons.menu,
                size: 35,
              ),
            ),
          )
        ],
        centerTitle: false,
        title: Text(
          'Kijung App',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff7091C2),
      ),
      body: Container(
        color: Color(0xffFBF5F4),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.all(const Radius.circular(40.0))),
                height: 76,
                width: 100,
                color: Colors.white,
                child: Center(
                    child: Text(
                  '${_lists[index]}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: _lists.length),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'list add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
