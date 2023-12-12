import 'package:flutter/material.dart';

class MyRevision extends StatefulWidget {
  const MyRevision({super.key});

  @override
  State<MyRevision> createState() => _MyRevisionState();
}

class _MyRevisionState extends State<MyRevision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 12, 12),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Demo App"),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.login)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            margin: EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Welcome To Flutter ",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.teal),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 1",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 2",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            color: Color.fromARGB(255, 58, 55, 55),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                "Contact 3",
                style: TextStyle(color: Colors.teal),
              ),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
        
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.black,
        onPressed: (){},
        child: Icon(Icons.add),
        ),
      );
  
  }
}
