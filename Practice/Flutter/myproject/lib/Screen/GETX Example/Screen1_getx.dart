import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/Screen/GETX%20Example/Screen2_getx.dart';

class MyGetScreen1 extends StatelessWidget {
  const MyGetScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            print("Hello");
            Get.to(MyGetScreen2(), arguments: ["Myflutter" , "GetX Example"]);
          }, child: Text("Screen 1 to Screen 2")),
      ),
    );
  }
}