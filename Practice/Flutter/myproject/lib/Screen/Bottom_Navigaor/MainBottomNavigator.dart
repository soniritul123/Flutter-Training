import 'package:flutter/material.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Home.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Music.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Settings.dart';


class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  List<Widget> myContainer = [
    MyHomeScreen(),
    MyMusicLibrary(),
    MySettingsScreen()
  ];

  var currentindex = 0;

  void tapClick(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: Center(
        child: myContainer.elementAt(currentindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                color: Colors.black,
              ),
              label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: "Settings"),
        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        elevation: 5,
        onTap: tapClick,
        currentIndex: currentindex,
      ),
    );
  }
}