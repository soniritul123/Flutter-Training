import 'package:flutter/material.dart';

class MyCameraScreen extends StatelessWidget {
  const MyCameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}