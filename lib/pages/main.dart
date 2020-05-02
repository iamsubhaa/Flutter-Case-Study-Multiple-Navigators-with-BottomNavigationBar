import 'package:demo_app/navigation/main.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/utills/data.dart';

const List<Pages> pages = <Pages>[
  Pages('Home', Icons.home),
  Pages('List', Icons.list),
  Pages('User', Icons.person),
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("_currentBottomIndex   ");
    print(_currentBottomIndex);
    print(Navigator.defaultRouteName);
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentBottomIndex,
        onTap: (int index){
          setState(() {
            _currentBottomIndex = index;
          });
        },
        items: pages.map((entry){
          return BottomNavigationBarItem(icon: Icon(entry.icon),title: Text(entry.title));
        }).toList()
      ),
      body: IndexedStack(
        index: _currentBottomIndex,
        children: navbarList
      )
    );
  }
}
