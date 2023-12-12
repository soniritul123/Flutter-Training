import 'package:flutter/material.dart';

class MyBottomAppExample extends StatefulWidget {
  const MyBottomAppExample({super.key});

  @override
  State<MyBottomAppExample> createState() => _MyBottomAppExampleState();
}

class _MyBottomAppExampleState extends State<MyBottomAppExample> {
  List<Widget> myContainer = [
    Text("Home", style: TextStyle(fontSize: 26),),
    Text("Music", style: TextStyle(fontSize: 26),),
    Text("Settings", style: TextStyle(fontSize: 26),)
  ];

  var currentindex = 0;

  void tapClick(int index){
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
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.teal, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black,),
          label: "Home" ),
         BottomNavigationBarItem(
          icon: Icon(Icons.music_note, color: Colors.black,),
          label: "Music" ),
         BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.black,), 
          label: "Setting"),
      ],
      type: BottomNavigationBarType.shifting,
      iconSize: 24,
      elevation: 5,
      onTap: tapClick,
      currentIndex: currentindex,),

    );
  }
}