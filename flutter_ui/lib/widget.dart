import 'package:flutter/material.dart';

Widget textDetails(String image, String hintText) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 8.0)],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Image.asset(image, height: 25),
        SizedBox(width: 20),
        Expanded(
          child: TextField(
            style: TextStyle(fontSize: 20, color: Colors.pink),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        )
      ],
    ),
  );
}

Widget coloredButton(BuildContext context, String btnName, Function onPressed) {
  return MaterialButton(
    onPressed: onPressed,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: Colors.pink,
    height: 50,
    minWidth: MediaQuery.of(context).size.width / 2.3,
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text(
        btnName,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
  );
}
