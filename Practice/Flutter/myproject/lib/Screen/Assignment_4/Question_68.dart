// 68. Write a code to display edit, view, delete options with context menu
// in listview and also perform respective operation on user's choice

import 'package:flutter/material.dart';

class Question68 extends StatefulWidget {
  const Question68({super.key});

  @override
  State<Question68> createState() => _Question68State();
}

class _Question68State extends State<Question68> {
  TextEditingController _q68controller = TextEditingController();
  List Q68list = [];
  var editindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_68"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _q68controller,
              decoration: InputDecoration(
                  hintText: "enter what you want",
                  labelText: "entry..",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          editindex!=null? ElevatedButton(
              onPressed: () {
                setState(() {
                  Q68list[editindex] = _q68controller.text.toString();
                  editindex = null;
                  _q68controller.text = "";
                });
              },
              child: Text("Edit")):
          ElevatedButton(
            onPressed: () {
              setState(() {
                Q68list.add(_q68controller.text.toString());
                _q68controller.clear();
              });
            },
            child: Text("submit"),
          ),
         
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Q68list.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: Card(
                    elevation: 20,
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(Q68list[index]),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                                onTap: () {
                                  setState(() {
                                    _q68controller.text = Q68list[index];
                                  editindex = index;
                                  });
                                },
                                child: Text("Edit")),
                            PopupMenuItem(
                                onTap: () {
                                  setState(() {
                                    _q68controller.text = Q68list[index];
                                  });
                                },
                                child: Text("view")),
                            PopupMenuItem(
                                onTap: () {
                                 setState(() {
                                    Q68list.removeAt(index);
                                 });
                                },
                                child: Text("delete")),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}