import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("assets/nounsetting.png"),
          )
        ],
      ),
    );
  }
}
