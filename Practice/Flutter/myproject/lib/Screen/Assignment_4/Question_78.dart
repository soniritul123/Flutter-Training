// 78. Write a program to add name from the text view and insert into the
// listview. If you click on the listview then name should be show in the
// dialog box. When user press for 2 seconds on particular List item then
// open Context Menu (Delete Item, Edit Item, Exit). If user click on
// Delete Item then Open one Alert Dialog with message (“Are you sure
// want to delete Item?”) and yes, no button if user press yes button then
// remove item from list. (Click a DELETE button, it gives a confirm box)
// If user click on Edit item then selected item display on EditText and
// again user click on button then this (updated item) should be replace
// with old item

import 'dart:math';

import 'package:flutter/material.dart';

class Question78 extends StatefulWidget {
  const Question78({super.key});

  @override
  State<Question78> createState() => _Question78State();
}

class _Question78State extends State<Question78> {
  TextEditingController _78textcontroller = TextEditingController();
  List q78list = [];
  bool? editq78 = false;
  dynamic currentindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_78"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _78textcontroller,
              decoration: InputDecoration(
                  hintText: "enter",
                  labelText: "text",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          editq78!
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      q78list[currentindex] = _78textcontroller.text.toString();
                      editq78 = true;
                      _78textcontroller.clear();
                    });
                  },
                  child: Text("Edit"))
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      q78list.add(_78textcontroller.text.toString());
                      _78textcontroller.text = "";
                      print("$q78list");
                    });
                  },
                  child: Text("add")),
          Expanded(
            child: ListView.builder(
              itemCount: q78list.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          var alert = AlertDialog(
                            title: Text("Alert"),
                            content: Text("chouse any one"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      var alert1 = AlertDialog(
                                        title: Text("Alert"),
                                        content: Text(
                                            "are you sure you want to delete"),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  q78list.removeAt(index);
                                                });
                                                Navigator.pop(context);
                                                Navigator.pop(context);
                                              },
                                              child: Text("Yes")),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("No")),
                                        ],
                                      );
                                      showDialog(
                                        context: context,
                                        builder: (context) => alert1,
                                      );
                                    });
                                  },
                                  child: Text("delete")),
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      currentindex = index;
                                      _78textcontroller.text =
                                          q78list[index].toString();
                                      editq78 = true;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Edit")),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Exit")),
                            ],
                          );
                          showDialog(
                              context: context, builder: (context) => alert);
                        });
                      },
                      child: Card(
                        elevation: 20,
                        margin: EdgeInsets.all(20),
                        child: Text("${q78list[index]}"),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}