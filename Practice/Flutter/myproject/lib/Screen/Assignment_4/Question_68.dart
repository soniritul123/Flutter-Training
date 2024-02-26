import 'package:flutter/material.dart';

class MyContextMenu extends StatefulWidget {
  const MyContextMenu({super.key});

  @override
  State<MyContextMenu> createState() => _MyContextMenuState();
}

class _MyContextMenuState extends State<MyContextMenu> {
  //Creating a variable for controller of text editor
  TextEditingController _name_controller = new TextEditingController();
  String enteredname = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Context Menu"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),

              //This is text Field widget for inputting values in application
              child: TextField(
                controller: _name_controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "  Enter Your Name",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          enteredname = _name_controller.text.toString();
                        });
                      },
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Entered Field is ---->",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  enteredname,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                PopupMenuButton(
                  color: Colors.white,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 0,
                        child: Text("Edit"),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Text("Delete"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("View"),
                      ),
                    ];
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}