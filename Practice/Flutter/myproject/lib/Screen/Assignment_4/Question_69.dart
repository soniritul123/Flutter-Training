// 69. Create an application like gmail and display Screens according to
// user selection and design each page with dummy data


import 'package:flutter/material.dart';

class Question69 extends StatefulWidget {
  const Question69({super.key});

  @override
  State<Question69> createState() => _Question69State();
}

class _Question69State extends State<Question69> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.pan_tool),
            // SizedBox(
            //   width: 30,
            // ),
            Text("Compose"),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Question_69"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 80,
              color: Colors.blue,
              child: Scaffold(
                drawer: Drawer(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      TabBar(
                        tabs: [
                          Tab(
                            child: Text("Gmail"),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                body: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Search your mail"),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.person),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 410),
                child: Text("Primary"),
              ),
            ),
            Container(
              height: 580,
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                  ListTile(
                    title: Text("Flutter Assignment"),
                    leading: Icon(Icons.message),
                    trailing: Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            BottomNavigationBar(items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: "messages"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera), label: "camera"),
            ]),
          ],
        ),
      ),
    );
  }
}