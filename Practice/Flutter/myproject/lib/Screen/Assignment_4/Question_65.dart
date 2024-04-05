// 65. open alert dialog when user want to exit from the application


import 'package:flutter/material.dart';

class Question65 extends StatefulWidget {
  const Question65({super.key});

  @override
  State<Question65> createState() => _Question65State();
}

class _Question65State extends State<Question65> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(title: Text("Question 65"),backgroundColor: Colors.deepPurple,),
      ),
        onWillPop: () => _onBackButtonPressed(context));
      
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitapp = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Are you sure you want ot exit?"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes"))
              ],
            ));
    return exitapp ?? false;
  }
}