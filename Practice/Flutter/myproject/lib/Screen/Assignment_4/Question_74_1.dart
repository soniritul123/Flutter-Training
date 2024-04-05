import 'package:flutter/material.dart';

import 'package:myproject/Screen/Assignment_4/Question_74_2.dart';



class Question74 extends StatefulWidget {
  const Question74({super.key});

  @override
  State<Question74> createState() => _Que74State();
}

class _Que74State extends State<Question74> {
  TextEditingController _1controller = TextEditingController();
  TextEditingController _2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 74"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _1controller,
              decoration: InputDecoration(
                hintText: "enter text",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _2controller,
              decoration: InputDecoration(
                hintText: "enter text",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                onPressed: () {
                  int? a1, b1;
                  setState(() {
                    a1 = int.parse(_1controller.text);
                    b1 = int.parse(_2controller.text);
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Question74_2(
                          a: a1,
                          b: b1,
                        ),
                      ));
                },
                child: Text("Submit")),
          )
        ],
      ),
    );
  }
}