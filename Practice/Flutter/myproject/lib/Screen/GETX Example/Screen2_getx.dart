import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetScreen2 extends StatelessWidget {
  const MyGetScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Column(
        children: [
          Text("Message : ${Get.arguments[0]}"),
          Text("Topic : ${Get.arguments[1]}"),
          Center(
            child: ElevatedButton(
              onPressed: (){
                print("Hello");
                Get.back();
              }, child: Text("Go Back")),
          ),
        ],
      ),
    );
  }
}