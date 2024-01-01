import 'package:flutter/material.dart';

class MyQuestion49 extends StatelessWidget {
  const MyQuestion49({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
         //mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Expanded(
            child: Container(
              height: 150,
              width: double.maxFinite,
              color: Colors.red,
              margin: EdgeInsets.all(5),
            ),
          ),
      Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ),
            ],
          ),
      Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 220,
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                ),
              ),
            ],
          ),
      Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 120,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
            ],
          ),
      Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                ),
              ),
            ],
          ),
         ],
      ),
    );
  }
}