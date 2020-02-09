import 'package:basanta/packages.dart';
import 'package:basanta/screens/loading_screen.dart';
import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      home: MyNavigatorBar(),
    );
  }
}

class MyNavigatorBar extends StatefulWidget {
  @override
  _MyNavigatorBarState createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  int _currentIndex = 0;
  final List<Widget> _child = [
    HomeContent(),
    PkrPackages(),
    AboutUs(),
    LoadingScreen(),
  ];
  void onTappedBar(int index) {
    setState(() {});
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Home',
              style: TextStyle(),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_parking,
              color: Colors.lightBlue,
            ),
            title: Text('Packages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.face,
              color: Colors.lightBlue,
            ),
            title: Text('About Us'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Colors.lightBlue,
            ),
            title: Text('Locaiton'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
