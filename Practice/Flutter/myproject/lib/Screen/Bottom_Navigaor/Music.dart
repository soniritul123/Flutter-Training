import 'package:flutter/material.dart';

class MyMusicLibrary extends StatelessWidget {
  const MyMusicLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[600],
      child: Center(
        child: Text("Music Library"),
      ),
    );
  }
}