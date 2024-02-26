import 'package:flutter/material.dart';

class MySnackBarExample extends StatefulWidget {
  const MySnackBarExample({super.key});

  @override
  State<MySnackBarExample> createState() => _MySnackBarExampleState();
}

class _MySnackBarExampleState extends State<MySnackBarExample> {
  @override

  void showSnackBar(BuildContext context, String message)
  {
    var snackBar = SnackBar(
      backgroundColor: Colors.teal,
      elevation: 20,
      content: Text(message),
      duration: Duration(seconds: 2),
      );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          showSnackBar(context, "Welcome to Flutter");
        },
        child: Text("Click for Snack Bar")),
    );
  }
}