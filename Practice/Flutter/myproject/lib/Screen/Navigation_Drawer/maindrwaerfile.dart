import 'package:flutter/material.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Home.dart';
import 'package:myproject/Screen/Bottom_Navigaor/Settings.dart';
import 'package:myproject/Screen/Navigation_Drawer/drawerheader.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

enum DrawerSection { dashboard, settings, profile, accounts }

var mainContainer;

var currentPage = DrawerSection.profile;

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    setPages();
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: mainContainer,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [MyDrawerHeader(), DrawerList()],
        )),
      ),
    );
  }

  Widget DrawerList() {
    return Column(
      children: [
        menu(1, "Home", Icons.home,
            currentPage == DrawerSection.dashboard ? true : false),
        menu(2, "Settings", Icons.settings,
            currentPage == DrawerSection.settings ? true : false),
        menu(3, "Profile", Icons.person,
            currentPage == DrawerSection.profile ? true : false),
      ],
    );
  }

  Widget menu(int d, String title, IconData icon, bool selected) {
    return Material(
      color: selected? Colors.grey : Colors.teal[200],
      child: InkWell(
        onTap: () {
          setState(() {
            Navigator.pop(context);
            if(d == 1){
              currentPage = DrawerSection.dashboard;
            }else if(d == 2){
              currentPage = DrawerSection.settings;
            }else if(d == 3){
              currentPage = DrawerSection.profile;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
  void setPages(){
    if(currentPage == DrawerSection.dashboard){
      mainContainer = MyHomeScreen();
    }else if(currentPage == DrawerSection.settings){
      mainContainer = MySettingsScreen();
    }
  }
}
