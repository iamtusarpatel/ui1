import 'package:flutter/material.dart';
import 'package:flutter_ui/forgot.dart';
import 'register2.dart';
import 'package:flutter_ui/widget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              textDetails('assets/user.png', 'Enter Username'),
              SizedBox(height: 30),
              textDetails('assets/lock.png', 'Enter Password'),
              SizedBox(height: 30),
              coloredButton(context, "LOGIN", () {}),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forgot()));
                },
                height: 50,
                minWidth: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Forget Password?',
                      style: TextStyle(fontSize: 25, color: Colors.pink)),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You Don't Have An Account?",
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register2()));
                      },
                      child: Text('Register',
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
