import 'package:flutter/material.dart';
import 'package:flutter_ui/gender.dart';
import 'package:flutter_ui/widget.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200),
              Text(
                "Verification Code Please type the verification code sent to +91 9898989898",
                style: TextStyle(fontSize: 25, color: Colors.pink),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textField(),
                  SizedBox(
                    width: 10,
                  ),
                  textField(),
                  SizedBox(
                    width: 10,
                  ),
                  textField(),
                  SizedBox(
                    width: 10,
                  ),
                  textField()
                ],
              ),
              SizedBox(height: 30),
              coloredButton(context, "REGISTER", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Gender()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textField() {
  return Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 8.0)],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(fontSize: 20, color: Colors.pink),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    ),
  );
}
