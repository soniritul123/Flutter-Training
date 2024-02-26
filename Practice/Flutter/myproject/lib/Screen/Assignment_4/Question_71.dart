import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => My_NavigationDrawerState();
}

class My_NavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // here we have created a drawer, showing contents in listview
      drawer: Drawer(
        elevation: 50,
        backgroundColor: Colors.purple,
        child: ListView(
          children: [
            //This is drawer header which appears on top of navigation drawer
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                child: Text("Drawer example",
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            ListTile(
              title: Text(
                "Gallery",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Audio",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Video",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Navigation Drawer"),
      ),
      body: Center(
        child: Text("This is just a random text in body"),
      ),
    );
  }
}