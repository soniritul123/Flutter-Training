import 'package:flutter/material.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Home.dart';
import 'package:myproject/Screen/NavigationDrawer/CameraScreen.dart';
import 'package:myproject/Screen/NavigationDrawer/HomeScreen.dart';
import 'package:myproject/Screen/NavigationDrawer/settingScreen.dart';
import 'package:myproject/Screen/homepage.dart';

class MyDrawerExample1 extends StatefulWidget {
  const MyDrawerExample1({super.key});

  @override
  State<MyDrawerExample1> createState() => _MyDrawerExample1State();
}

class _MyDrawerExample1State extends State<MyDrawerExample1> {
  @override

  Widget widgetName = MyHomeScreen1();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: widgetName,
      drawer: Drawer(
        backgroundColor: Colors.teal,
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.teal[200],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network("https://static-cdn.icons8.com/l/3d/images/2_thumb_up_man_1.webp",height: 60, width: 60,),
                  Text("Email", style: TextStyle(fontSize: 36),),
                  Text("ritulsoni@gmail.com"),
              ]),
            ),
            Expanded(
              child: ListView(children: [
               ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  widgetName = MyHomeScreen1();
                });
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeScreen1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  widgetName = MySettingScreen();
                });
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MySettingScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  widgetName = MyCameraScreen();
                });
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MyCameraScreen()));
              },
            ),
            ],))
           
          ],
        ),
      ),
    );
  }
}