import 'package:flutter/material.dart';

class MyQuestion55 extends StatefulWidget {
  const MyQuestion55({super.key});

  @override
  State<MyQuestion55> createState() => _MyQuestion55State();
}

class _MyQuestion55State extends State<MyQuestion55> {
  @override
  bool a = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox OnPress TextBox Show'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Checkbox(
                  value: a,
                  onChanged: (value) {
                    setState(() {
                      a = value ?? false;
                    });
                  },
                ),
                Text('Show TextView'),
              ],
            ),
            Visibility(
              visible: a,
              child: Text(
                'This is the Textview Part',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}