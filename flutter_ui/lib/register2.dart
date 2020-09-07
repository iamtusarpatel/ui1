import 'package:flutter/material.dart';
import 'package:flutter_ui/login.dart';
import 'widget.dart';

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  bool checkValue = false;
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
                Image.asset("assets/onelogo.png"),
                // SizedBox(height: 120),
                textDetails('assets/user.png', 'First name'),
                SizedBox(height: 25),
                textDetails('assets/user.png', 'Last name'),
                SizedBox(height: 25),
                textDetails('assets/user.png', 'Company'),
                SizedBox(height: 25),
                textDetails('assets/phone.png', 'Email'),
                SizedBox(height: 25),
                textDetails('assets/email.png', 'Home Phone'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Day Phone'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Address 1'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Address 2'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'City'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'State'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Zip'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Password'),
                SizedBox(height: 25),
                textDetails('assets/lock.png', 'Re Type Password'),
                // SizedBox(height: 25),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Checkbox(
                          value: checkValue,
                          onChanged: (bool newValue) {
                            setState(() {
                              checkValue = newValue;
                            });
                          }),
                    ),
                    Text(
                      "Subscribe",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                coloredButton(context, "REGISTER", () {}),
                // SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account?",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text('LOG IN',
                            style:
                                TextStyle(fontSize: 16, color: Colors.pink))),
                  ],
                ),
                MaterialButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Register2()));
                    },
                    child: Text(
                      'By registering, you agree our Terms & Conditions and Privacy Policy.Do note that we will not share your personal information withanyone outsite of our company, and we hate spam too, so you\'llnever get spam emails from us',
                      style: TextStyle(fontSize: 12, color: Colors.pink),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
