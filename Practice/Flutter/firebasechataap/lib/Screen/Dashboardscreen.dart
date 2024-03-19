// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasechataap/Screen/Homescreen.dart';
import 'package:firebasechataap/Screen/Profilescreen.dart';
import 'package:firebasechataap/Screen/postscreen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  User? user;
  Dashboard({super.key, required this.user});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController _pageController = PageController();
  String? Display = "";
  String? username;

  Future<void> getData() async {
    var document = await FirebaseFirestore.instance
        .collection("User")
        .doc(widget.user!.uid)
        .get();

    setState(() {
      username = document["name"];
      print(username);
      print(document["email"]);
  
    });
  }

  @override
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 162, 205),
      appBar: AppBar(
        // centerTitle: true,
        title: Text('Hi, $username'),
        backgroundColor: Colors.deepPurple[400],
        foregroundColor: Colors.white,
        elevation: 20,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          MyHomeScreen(),
          Text("Friends"),
          MyPostScreen(user: widget.user),
          Text("Reel"),
          MyProfileScreen(
            user: widget.user,
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple.shade200,
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        height: 65,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.group_outlined,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.add_a_photo,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.movie_filter_outlined,
            size: 35,
            color: Colors.blue,
          ),
          Icon(
            Icons.person_4_outlined,
            size: 35,
            color: Colors.blue,
          )
        ],
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(seconds: 1), curve: Curves.easeOut);
        },
      ),
    );
  }
}
