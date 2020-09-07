import 'package:flutter/material.dart';
import 'package:flutter_ui/login.dart';
import 'package:flutter_ui/register.dart';
import 'package:flutter_ui/verification.dart';
import 'widget.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200),
              textDetails('assets/phone.png', 'Enter Mobile No.'),
              SizedBox(height: 30),
              coloredButton(context, "FORGOT PASSWORD?", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verification()));
              }),
              SizedBox(height: 30),
              coloredButton(context, "REGISTER", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              }),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You Have An Account?",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text('Login',
                          style: TextStyle(fontSize: 16, color: Colors.pink))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
