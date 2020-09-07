import 'package:flutter/material.dart';
import 'package:flutter_ui/home.dart';
import 'package:flutter_ui/widget.dart';

class AddPhoto extends StatefulWidget {
  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 220),
              Text(
                "   Add Photo",
                style: TextStyle(fontSize: 25, color: Colors.pink),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 20.0)
                    ],
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.pink)),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/male.png"),
                          radius: 60,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 3, 3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: coloredButton(context, "Continue", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }))
            ],
          ),
        ),
      ),
    );
  }
}
