import 'package:flutter/material.dart';

class MyQuestion54 extends StatefulWidget {
  const MyQuestion54({super.key});

  @override
  State<MyQuestion54> createState() => _MyQuestion54State();
}

class _MyQuestion54State extends State<MyQuestion54> {
  @override
  double fsize = 35.0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Welcome To Flutter",
            style: TextStyle(fontSize: fsize),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fsize += 5.0;
                    });
                  },
                  child: Text("+")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fsize -= 5.0;
                    });
                  },
                  child: Text("-"))
            ],
          ),
        ],
      ),
    );
  }
}