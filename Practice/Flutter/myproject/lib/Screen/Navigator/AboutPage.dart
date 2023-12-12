import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  String? name;
  AboutPage({super.key, required this.name});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(widget.name!),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          
          }, child: Text("Go Back"))
        ],
      ),
    );
  }
}