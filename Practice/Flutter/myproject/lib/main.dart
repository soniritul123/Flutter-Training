import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/Offline_Database_Assignment/AddStudent.dart';
import 'package:myproject/Offline_Database_Assignment/Dashboard.dart';
import 'package:myproject/Screen/NavigationDrawer/HomeScreen.dart';




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
      home: DashBoardSqlFlite(),

      // return GetMaterialApp(
       
      //   home: MyGetXClassExample(),

      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}