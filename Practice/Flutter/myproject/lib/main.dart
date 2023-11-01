import 'package:flutter/material.dart';
import 'package:myproject/Screen/Column_example.dart';
import 'package:myproject/Screen/Continer_Decoration.dart';
import 'package:myproject/Screen/Row_Column_Ex1.dart';
import 'package:myproject/Screen/Row_Column_Ex2.dart';
import 'package:myproject/Screen/Row_Column_Ex3.dart';
import 'package:myproject/Screen/Row_example.dart';
import 'package:myproject/Screen/mystrawberry_example.dart';
import 'package:myproject/Screen/container_example.dart';
import 'package:myproject/Screen/elevated_button.dart';
import 'package:myproject/Screen/homepage.dart';

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
      home:Mystrawberryexample() 
    );

  }
}