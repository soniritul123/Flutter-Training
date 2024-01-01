import 'package:flutter/material.dart';

class MyQuestion50 extends StatefulWidget {
  const MyQuestion50({super.key});

  @override
  State<MyQuestion50> createState() => _MyQuestion50State();
}

class _MyQuestion50State extends State<MyQuestion50> {
  @override
  TextEditingController number = TextEditingController();
  String revnum = '';

  void reverseNumber() {
    String inputNumber = number.text;
    int i = int.tryParse(inputNumber) ?? 0;

    int reversed = 0;
    while (i != 0) {
      int digit = i % 10;
      reversed = reversed * 10 + digit;
      i = i ~/ 10;
    }

    setState(() {
      revnum = reversed.toString();
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: TextField(
                controller: number,
                decoration: InputDecoration(labelText: 'Enter a Number'),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: reverseNumber,
                child: Text('Reverse Number'),
              ),
            ),
            Container(
              child: Text(
                'Reversed Number:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
              Text(
                revnum,
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}


