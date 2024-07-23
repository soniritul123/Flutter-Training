import 'package:flutter/material.dart';
import 'package:myuiproject/UI_1/Login_Screen.dart';
import 'package:myuiproject/UI_1/Screen3.dart';
import 'package:myuiproject/UI_1/Screen4.dart';
import 'package:myuiproject/UI_2/Screen1.dart';
import 'package:myuiproject/UI_2/Screen2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen4(),
    );
  }
}