import 'package:flutter/material.dart';

// flutter run -d chrome --web-renderer html

class MyImageExample extends StatelessWidget {
  const MyImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("assets/i.jpg", height: 300, width: 300,),
      ),
    );
  }
}