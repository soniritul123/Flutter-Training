import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Screen"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Welcome to About Page"),
          ),
        
        ElevatedButton(onPressed: () {
        Navigator.pop(context);

        }, child: Text("Go Back"),)
        ],
      ),
    );
  }
}