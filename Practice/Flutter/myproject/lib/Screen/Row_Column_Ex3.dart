import 'package:flutter/material.dart';

class MyScreen3 extends StatelessWidget {
  const MyScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 420,
                width: 250,
                color: Colors.lightGreen,
                
              ),
              Container(
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Container(
                      height: 150,
                      width: 200,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 230,
            width: double.maxFinite,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}