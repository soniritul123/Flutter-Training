import 'package:flutter/material.dart';

class MySettingsScreen extends StatelessWidget {
  const MySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 90, 170, 36),
      child: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}