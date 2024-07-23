import 'package:flutter/material.dart';
import 'package:myblocexample/MyProductList.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ElevatedButton(
        onPressed: (){
          MaterialPageRoute(builder: (context) => MyProductList(),);
        }, 
        child: Text("Fetch Data")),
    );
  }
}