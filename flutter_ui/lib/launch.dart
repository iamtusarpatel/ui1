import 'package:flutter/material.dart';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg1.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/logo_1.png", height: 150, width: 150),
              Image.asset("assets/dating_app.png", width: 195),
            ],
          ),
        ),
      ),
    );
  }
}
