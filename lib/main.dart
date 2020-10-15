import 'package:flutter/material.dart';
import 'CalculatePage.dart';
import 'DataPage.dart';
import 'NullPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children=[
    CalculatePage(),DataPage(),NullPage()
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('कैलकुलेट'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: new Text('पुरानी रीडिंग'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,size :25.0),
            title: Text('NULL'),

          ),
        ],
      ),
    );
  }
}