import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _TabInfo {
  const _TabInfo(this.title, this.icon);

  final String title;
  final IconData icon;
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MystatefulWidget createState() => _MystatefulWidget();
}

class _MystatefulWidget extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final _tabInfo = [
      _TabInfo(
        "Home",
        CupertinoIcons.home,
      ),
      _TabInfo(
        "Menu",
        Icons.menu,
      ),
      _TabInfo(
        "Profile",
        CupertinoIcons.profile_circled,
      ),
    ];
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: CupertinoTabScaffold(
        restorationId: 'cupertino_tab_scaffold',
        tabBuilder: (context, index) {
          return CupertinoTabView(
            restorationScopeId: 'cupertino_tab_scaffold',
            builder: (context) => _CupertinoTab(
              title: _tabInfo[index].title,
              icon: _tabInfo[index].icon,
            ),
            defaultTitle: _tabInfo[index].title,
          );
        },
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            for (final tabInfo in _tabInfo)
              BottomNavigationBarItem(
                icon: Icon(tabInfo.icon),
              ),
          ],
        ),
      ),
    );
  }
}

class _CupertinoTab extends StatelessWidget {
  const _CupertinoTab({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    const String title1 = 'title';
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
          // backgroundColor: Colors.white,
          ),
      backgroundColor: CupertinoColors.white,
      child: Center(
        child: Icon(
          icon,
          semanticLabel: title,
          size: 100,
        ),
      ),
    );
  }
}
