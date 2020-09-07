import 'package:flutter/material.dart';
// import 'package:flutter_ui/home.dart';
// import 'package:flutter_ui/launch.dart';
import 'package:flutter_ui/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.pink,
        fontFamily: 'Salsa',
      ),
      title: 'Flutter UI',
      home: Login(),
    );
  }
}
