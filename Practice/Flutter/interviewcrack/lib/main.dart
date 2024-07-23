import 'package:flutter/material.dart';
import 'package:interviewcrack/Addition_Screen1.dart';

import 'package:interviewcrack/Display_list.dart';
import 'package:interviewcrack/Factorial_Screen1.dart';
import 'package:interviewcrack/GetAPIExample.dart';
import 'package:interviewcrack/checkbox_example.dart';
import 'package:interviewcrack/map_example.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGetAPIExample(),
     
    );

  }
}