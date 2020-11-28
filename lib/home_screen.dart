import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(color: Colors.blueGrey),
    Container(color: Colors.grey)
  ];

  List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark), label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.bubble_right), label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.camera), label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_2), label: ""),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.play), label: "")
  ];

  int _currentIndex = 2;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: _screens[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
