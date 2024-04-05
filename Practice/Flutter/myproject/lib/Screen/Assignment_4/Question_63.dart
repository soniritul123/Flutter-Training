// 63. Write a code to display alert dialog with positive, negative and
// neutral button and display toast respectively user's choice

import 'package:flutter/material.dart';

class Question63 extends StatefulWidget {
  var count = 0;
  Question63({super.key});

  @override
  State<Question63> createState() => _Question63State();
}

class _Question63State extends State<Question63> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Que 63"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Text("${widget.count}"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  fun();
                });
              },
              child: Text("Que 63 ans"))
        ],
      ),
    );
  }

  void fun() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.count++;
                              print(widget.count);
                              //count += 1;
                              Navigator.of(context).pop();
                              fun();
                            });

                            print("ontappedadd");
                          },
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text("add"),
                          ),
                        ),
                        CircleAvatar(
                          child: Text("${widget.count}"),
                        ),
                        GestureDetector(
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text("less"),
                          ),
                          onTap: () {
                            setState(() {
                              widget.count--;
                              print("ontappedless");
                              Navigator.of(context).pop();
                              fun();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
  }
}