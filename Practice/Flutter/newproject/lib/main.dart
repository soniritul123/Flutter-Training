import 'package:flutter/material.dart';
import 'package:newproject/Radio%20Button/Radiotile_example.dart';
import 'package:newproject/Row_Column%20Example/Strawberry.dart';
import 'package:newproject/TextFieldExample/Textfield_example1.dart';

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
      home: MyTextFieldExample(),
     
    );

  }
}