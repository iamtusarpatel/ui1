import 'package:flutter/material.dart';
import 'package:flutter_ui/login.dart';
import 'widget.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 120),
                textDetails('assets/user.png', 'Enter Username'),
                SizedBox(height: 25),
                textDetails('assets/phone.png', 'Enter Mobile No.'),
                SizedBox(height: 25),
                textDetails('assets/email.png', 'Enter EmailID'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Enter Password'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Enter Same Password'),
                SizedBox(height: 30),
                coloredButton(context, "REGISTER", () {}),
                SizedBox(height: 25),
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
                            style:
                                TextStyle(fontSize: 16, color: Colors.pink))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
