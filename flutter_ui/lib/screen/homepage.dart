import 'package:flutter/material.dart';
import 'package:flutter_ui/widget.dart';
import 'package:top_sheet/top_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {
                TopSheet.show(
                  context: context,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(Icons.done, color: Colors.green),
                              onPressed: () {}),
                          Text(
                            "Filter",
                            style: TextStyle(fontSize: 25),
                          ),
                          IconButton(
                              icon: Icon(Icons.clear, color: Colors.red),
                              onPressed: () => Navigator.pop(context))
                        ],
                      ),
                      Text(
                        "   Username",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 15),
                      textDetails("assets/user.png", "Enter user Name"),
                      SizedBox(height: 15),
                      Text(
                        "   Age",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 15),
                      RangeSlider(
                        values: _currentRangeValues,
                        min: 0,
                        max: 100,
                        divisions: 10,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                  direction: TopSheetDirection.TOP,
                );
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey[500], blurRadius: 5)],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/girl.png"),
                  Text(
                    "   Helen 20",
                    style: TextStyle(fontSize: 25),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text(
                          "25 miles away",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "I am a Fashion Model & I Love To Be Simple & Stylish",
                      style: TextStyle(fontSize: 12.5, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
