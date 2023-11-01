import 'package:flutter/material.dart';

class Mystrawberryexample extends StatelessWidget {
  const Mystrawberryexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 30, 99, 95), width: 2)),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 127, 179, 174),
              border: Border.all(color: Colors.teal, width: 5),
            ),
            child: Center(child: Text("Strawberry Pavlona")),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 127, 179, 174),
              border: Border.all(color: Colors.teal, width: 5),
            ),
            child: Text(
              "Strawberries are native to the temperate regions of the Northern Hemisphere, and cultivated varieties are widely grown throughout the world. The fruits are rich in vitamin C and are commonly eaten fresh as a dessert fruit, are used as a pastry or pie filling, and may be preserved in many ways.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 127, 179, 174),
              border: Border.all(color: Colors.teal, width: 5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    "170 Reviews",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 127, 179, 174),
              border: Border.all(color: Colors.teal, width: 5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.book,
                        color: Colors.purple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("PREP"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("25 min."),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.alarm,
                        color: Colors.purple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("COOK"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1 hr."),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.food_bank,
                        color: Colors.purple,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("FEEDS"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("4-6"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
