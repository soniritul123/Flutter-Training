
import 'package:flutter/material.dart';
import 'package:myproject/Screen/Assignment_4/Question_70/Audio.dart';
import 'package:myproject/Screen/Assignment_4/Question_70/Gallery.dart';
import 'package:myproject/Screen/Assignment_4/Question_70/Video.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  // initializing var for bottom navigation bar
  int current_index = 0;

  // This List is created  for calling contents in body after every click event on bottom naviugation bar
  // This list contains different screens created as per need but this is just a demo
  List<Widget> mybodyContainer = [Gallery(), Video(), Audio()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation screen"),
        backgroundColor: Colors.deepPurple,
      ),

      // Here in body, screens are changing on click event of bottom navigation bar tabs
      body: mybodyContainer.elementAt(current_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 15,
          onTap: (value) {
            setState(() {
              current_index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: "Video"),
            BottomNavigationBarItem(
                icon: Icon(Icons.audio_file), label: "Audio"),
          ]),
    );
  }
}