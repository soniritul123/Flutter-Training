import 'package:flutter/material.dart';

class MyTextFieldExample extends StatefulWidget {
  const MyTextFieldExample({super.key});

  @override
  State<MyTextFieldExample> createState() => _MyTextFieldExampleState();
}

class _MyTextFieldExampleState extends State<MyTextFieldExample> {
  TextEditingController mynameController = TextEditingController();
  TextEditingController myemailController = TextEditingController();
  String? name;
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: mynameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
            
                  ),
                  hintText: "Enter your Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.abc),
                  prefixIconColor: Colors.black
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: myemailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
            
                  ),
                  hintText: "Enter your Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.black
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
              setState(() {
                name = mynameController.text.toString();
                email = myemailController.text.toString();
              });
            }, child: Text("Submit"),),
            Text("Name: $name"),
            Text("Email: $email")
          ],
        ),
      ),
    );
  }
}