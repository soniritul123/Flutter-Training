import 'package:flutter/material.dart';
import 'package:myproject/Screen/Navigator/AboutPage.dart';

class MyFirstHomePage extends StatefulWidget {
  const MyFirstHomePage({super.key});

  @override
  State<MyFirstHomePage> createState() => _MyFirstHomePageState();
}

class _MyFirstHomePageState extends State<MyFirstHomePage> {
  TextEditingController _nameController = TextEditingController();
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "Enter Name",
              labelText: "Name",
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              name = _nameController.text.toString();
            });
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(name: name),));
          }, child: Text("About Page"))
        ],
      ),
    );
  }
}