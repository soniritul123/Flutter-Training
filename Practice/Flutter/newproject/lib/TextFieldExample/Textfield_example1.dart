import 'package:flutter/material.dart';

class MyTextFieldExample extends StatefulWidget {
  const MyTextFieldExample({super.key});

  @override
  State<MyTextFieldExample> createState() => _MyTextFieldExampleState();
}

class _MyTextFieldExampleState extends State<MyTextFieldExample> {
  TextEditingController _nameController = TextEditingController();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // obsecureText = true;
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: "Enter Name",
              labelText: "Name",
              ),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${_nameController.text.toString()}")));
                  setState(() {
                    name = _nameController.text.toString();
                  });
            }, child: Text("Save", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[300]),
            ),
          ),
        ],
      ),
    );
  }
}