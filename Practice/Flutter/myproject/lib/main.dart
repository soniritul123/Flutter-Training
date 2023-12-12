import 'package:flutter/material.dart';
import 'package:myproject/Screen/Bottom_Navigaor/MainBottomNavigator.dart';
import 'package:myproject/Screen/Checkbox_example.dart';
import 'package:myproject/Screen/Column_example.dart';
import 'package:myproject/Screen/Continer_Decoration.dart';
import 'package:myproject/Screen/Extanded_example.dart';
import 'package:myproject/Screen/Gridvew_task.dart';
import 'package:myproject/Screen/Gridview_example.dart';
import 'package:myproject/Screen/Horizontal_list_ex.dart';
import 'package:myproject/Screen/Image_example.dart';
import 'package:myproject/Screen/Image_example_net.dart';
import 'package:myproject/Screen/Listview_builder_ex.dart';
import 'package:myproject/Screen/Listview_example.dart';
import 'package:myproject/Screen/Navigator/homepage.dart';
import 'package:myproject/Screen/Navigator/homescreen.dart';
import 'package:myproject/Screen/Radio_Example.dart';
import 'package:myproject/Screen/Rdiolistile_example.dart';
import 'package:myproject/Screen/Row_Column_Ex1.dart';
import 'package:myproject/Screen/Row_Column_Ex2.dart';
import 'package:myproject/Screen/Row_Column_Ex3.dart';
import 'package:myproject/Screen/Row_example.dart';
import 'package:myproject/Screen/Ternary_operator.dart';
import 'package:myproject/Screen/Test_example.dart';
import 'package:myproject/Screen/Textfield_task.dart';
import 'package:myproject/Screen/card_example.dart';
import 'package:myproject/Screen/dynamic_color_change.dart';
import 'package:myproject/Screen/mystrawberry_example.dart';
import 'package:myproject/Screen/container_example.dart';
import 'package:myproject/Screen/elevated_button.dart';
import 'package:myproject/Screen/homepage.dart';
import 'package:myproject/Screen/tast_color_change.dart';
import 'package:myproject/Screen/textchange_button.dart';
import 'package:myproject/Screen/textfiled_ex.dart';

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
      home: MyBottomAppExample(),
      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}