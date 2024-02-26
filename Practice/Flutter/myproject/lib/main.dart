import 'package:flutter/material.dart';
import 'package:myproject/Screen/ListTile_example.dart';
import 'package:myproject/Screen/Listview_builder_ex.dart';
import 'package:myproject/Screen/Listview_example1.dart';
import 'package:myproject/Screen/MapListExample.dart';
import 'package:myproject/Screen/NavigationDrawer/Navigationdrawerexample.dart';
import 'package:myproject/Screen/SearchExample/Searchexample1.dart';
import 'package:myproject/Screen/Sliderexample.dart';
import 'package:myproject/Screen/Sliderexample2.dart';
import 'package:myproject/Screen/SnackBar/Snackbarexample.dart';
import 'package:myproject/Screen/StackWidget/Stackwidetexample2.dart';
import 'package:myproject/Screen/StackWidget/Stackwidgetexample1.dart';
import 'package:myproject/Screen/URL%20Launcher/Example1.dart';
import 'package:myproject/Screen/URL%20Launcher/URLExamle2.dart';

import 'package:myproject/Screen/card_example.dart';




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
      home: MyDrawerExample1(),

      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}