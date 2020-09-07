import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Like"),
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
