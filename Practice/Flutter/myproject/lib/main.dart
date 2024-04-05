import 'package:flutter/material.dart';
import 'package:myproject/Screen/Online_Database_API/get_data_api_example.dart';


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
      home: MyApiGetExample1(),

      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}