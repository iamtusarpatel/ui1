import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/add.dart';
import 'package:flutter_ui/screen/homepage.dart';
import 'package:flutter_ui/screen/like.dart';
import 'package:flutter_ui/screen/message.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = [HomePage(), Like(), Message(), Add()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.linked_camera), title: Text('Like')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Message')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Text('User')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
