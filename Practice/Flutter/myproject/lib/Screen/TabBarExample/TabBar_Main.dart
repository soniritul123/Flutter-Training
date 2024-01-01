import 'package:flutter/material.dart';
import 'package:myproject/Screen/TabBarExample/CameraTab.dart';
import 'package:myproject/Screen/TabBarExample/HomeTab.dart';
import 'package:myproject/Screen/TabBarExample/MessageTab.dart';

class MyTabBarExamle extends StatefulWidget {
  const MyTabBarExamle({super.key});

  @override
  State<MyTabBarExamle> createState() => _MyTabBarExamleState();
}

class _MyTabBarExamleState extends State<MyTabBarExamle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Tab Bar Example"),
      
        bottom: TabBar(tabs: [
          Tab(
          icon: Icon(Icons.home),
          text: "Home",
        ),
        Tab(
          icon: Icon(Icons.camera),
          text: "Camera",
        ),
        Tab(
          icon: Icon(Icons.message),
          text: "Message",
        ),
        ]),
      ),
      body: TabBarView(children: [MyHomeTab(), MYCameraTab(), MyMessageTab()

      ]),
    );
  }
}