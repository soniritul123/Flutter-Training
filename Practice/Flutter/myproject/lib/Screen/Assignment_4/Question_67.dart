import 'package:flutter/material.dart';

class profileandLogoutmenu extends StatelessWidget {
  const profileandLogoutmenu({super.key});

// this is a program to show profile and logout menu in application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Profile and logout menu"),

        //this is to show profile menu in appbar

        leading: Icon(Icons.person_3_rounded),

        // This is used to show log out menu in appbar

        actions: [Icon(Icons.logout)],
      ),
      body: Center(
        child: Text("Profile and Logout option Menu"),
      ),
    );
  }
}