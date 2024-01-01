import 'package:flutter/material.dart';

class MyQuestion57 extends StatefulWidget {
  const MyQuestion57({super.key});

  @override
  State<MyQuestion57> createState() => _MyQuestion57State();
}

class _MyQuestion57State extends State<MyQuestion57> {
  @override
  Color? colorname = Colors.white;
  int _value = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorname,
      appBar: AppBar(
        title: Text("Color Change On Radio Button Click"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  colorname = Colors.red;
                });
              },
            ),
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  colorname = Colors.blue;
                });
              },
            ),
            Radio(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  colorname = Colors.teal;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
