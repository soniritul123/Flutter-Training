import 'package:flutter/material.dart';
import 'package:myproject/Screen/elevated_button.dart';
import 'package:myproject/Screen/elevated_button2.dart';
import 'package:myproject/Screen/floatingbuttonExample.dart';



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
      home: MyElevatedbutton2(),

      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}