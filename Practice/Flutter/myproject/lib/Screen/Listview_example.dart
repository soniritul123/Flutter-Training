import 'package:flutter/material.dart';

class MyListExample extends StatefulWidget {
  const MyListExample({super.key});

  @override
  State<MyListExample> createState() => _MyListExampleState();
}

class _MyListExampleState extends State<MyListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View example"),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Smart Watch"),
              trailing: Text("Rs. 800"),
              onTap: () {
                print("Smart watch clicked !!");
              },
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text("Television"),
              trailing: Text("Rs. 15000"),
            ),
          ],
        ),
      ),
    );
  }
}