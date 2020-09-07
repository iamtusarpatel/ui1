import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
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
