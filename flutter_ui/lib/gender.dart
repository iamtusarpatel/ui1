import 'package:flutter/material.dart';
import 'package:flutter_ui/addphoto.dart';
import 'package:flutter_ui/widget.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
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
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
              ),
              Text("Hii Vishal!",
                  style: TextStyle(fontSize: 35, color: Colors.pink)),
              Text("Please Choose Your Gender",
                  style: TextStyle(fontSize: 25, color: Colors.pink)),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.pink,
                    height: 150,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/male.png"),
                            radius: 50,
                          ),
                          Text("Male",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    color: Colors.pink,
                    height: 150,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/female.png"),
                            radius: 50,
                          ),
                          Text("Female",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: coloredButton(context, "Continue", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddPhoto()));
              }))
            ],
          ),
        ),
      ),
    );
  }
}
