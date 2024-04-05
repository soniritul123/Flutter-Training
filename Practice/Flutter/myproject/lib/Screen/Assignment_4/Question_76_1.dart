import 'package:flutter/material.dart';
import 'package:myproject/Screen/Assignment_4/Question_76_2.dart';

class Question76 extends StatefulWidget {
  const Question76({super.key});

  @override
  State<Question76> createState() => _Question76State();
}

class _Question76State extends State<Question76> {
  TextEditingController _1controller = TextEditingController();
  TextEditingController _2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_76"),
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
                        builder: (context) => Question76Page2(
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