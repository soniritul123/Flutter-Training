import 'package:flutter/material.dart';

class MyScreen2 extends StatelessWidget {
  const MyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            color: Colors.purple,
            child: Center(child: Text("38D43B3", style: TextStyle(fontSize: 40), )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.lightGreen,
                child: Center(child: Text("2AA650", style: TextStyle(fontSize: 40), )),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.lightBlue,
                      child: Center(child: Text("58AAE8", style: TextStyle(fontSize: 40), )),
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.red,
                      child: Center(child: Text("E74E33", style: TextStyle(fontSize: 40), )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.lightGreen,
            child: Center(child: Text("2AA650", style: TextStyle(fontSize: 40), )),
          ),
          
        ],
      ),
    );
  }
}