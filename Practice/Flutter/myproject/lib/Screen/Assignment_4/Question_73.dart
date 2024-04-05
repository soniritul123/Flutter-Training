// 73. Write a code to display Splash Screen using Activity

import 'package:flutter/material.dart';
import 'package:myproject/Screen/Assignment_4/Question_73_Splashscreen.dart';


class Question73 extends StatefulWidget {
  const Question73({super.key});

  @override
  State<Question73> createState() => _Question73State();
}

class _Question73State extends State<Question73> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreen();
  }

  Future<void> splashscreen() async {
    await Future.delayed(Duration(seconds: 2), () {
      FlutterSplashScreen.hide();

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Question73HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_73"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            color: Colors.teal,
            child: Center(
              child: Text("Splash screen Question_73"),
            ),
          )
        ],
      ),
    );
  }
}