import 'package:flutter/material.dart';

class Dateclickevent extends StatelessWidget {
  const Dateclickevent({super.key});

  @override
  Widget build(BuildContext context) {
    //creating a function to show date and time from in build date and time widget

    selectTimePicker(BuildContext context) async {}

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Date picker"),
      ),

      // This is a program to pick date click on click event of button
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Click here to select date    ----->  "),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    selectTimePicker(context);
                  },
                  child: Text("Select Date"))
            ],
          ),
        ),
      ),
    );
  }
}