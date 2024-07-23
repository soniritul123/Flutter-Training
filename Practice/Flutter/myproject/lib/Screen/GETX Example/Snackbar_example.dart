import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBArExampleGet extends StatelessWidget {
  const MySnackBArExampleGet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Snackbar"),
      ),
      body: ElevatedButton(
        onPressed: (){
          Get.snackbar("Flutter", "Welcome to state management",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.deepPurple,
          colorText: Colors.white,
          margin: EdgeInsets.all(30),
          borderRadius: 20,
          animationDuration: Duration(milliseconds: 1000));
        }, 
        child: Text("Open Snackbar")),
    );
  }
}