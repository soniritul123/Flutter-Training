// 66. Write a code to select Date on button's click event

import 'package:flutter/material.dart';

class Question66 extends StatefulWidget {
  const Question66({super.key});

  @override
  State<Question66> createState() => _Question66State();
}

class _Question66State extends State<Question66> {
  TextEditingController _datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question_66"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _datecontroller,
              decoration: InputDecoration(
                  labelText: "Select Date",
                  filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )),
              readOnly: true,
              onTap: () {
                _selectdate();
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2900),
    );
    if (_picked != null) {
      setState(() {
        _datecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}