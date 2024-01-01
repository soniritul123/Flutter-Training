import 'package:flutter/material.dart';

class MyQuestion52 extends StatefulWidget {
  const MyQuestion52({super.key});

  @override
  State<MyQuestion52> createState() => _MyQuestion52State();
}

class _MyQuestion52State extends State<MyQuestion52> {
  @override

  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  double? result = 0;
  String? tools;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Calculator"),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              controller: num1,
              decoration: InputDecoration(labelText: "Enter Number 1"),
            ),
          ),
          Container(
            child: TextField(
              controller: num2,
              decoration: InputDecoration(labelText: "Enter Number 2"),
            ),
          ),
          Container(
            child: RadioListTile(
                title: Text("+"),
                value: "+",
                groupValue: tools,
                onChanged: (value) {
                  setState(() {
                    result = double.parse(num1.text) + double.parse(num2.text);
                  });
                }),
          ),
          Container(
            child: RadioListTile(
                title: Text("-"),
                value: "-",
                groupValue: tools,
                onChanged: (value) {
                  setState(() {
                    result = double.parse(num1.text) - double.parse(num2.text);
                  });
                }),
          ),
          Container(
            child: RadioListTile(
                title: Text("*"),
                value: "*",
                groupValue: tools,
                onChanged: (value) {
                  setState(() {
                    result = double.parse(num1.text) * double.parse(num2.text);
                  });
                }),
          ),
          Container(
            child: RadioListTile(
                title: Text("/"),
                value: "/",
                groupValue: tools,
                onChanged: (value) {
                  setState(() {
                    result = double.parse(num1.text) / double.parse(num2.text);
                  });
                }),
          ),
          Container(
            child: Text(
              "Result : $result",
              style: TextStyle(fontSize: 26),
            ),
          )
        ],
      ),
    );
  }
}