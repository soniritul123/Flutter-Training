import 'package:flutter/material.dart';

class MyBottomSheetExample extends StatefulWidget {
  const MyBottomSheetExample({super.key});

  @override
  State<MyBottomSheetExample> createState() => _MyBottomSheetExampleState();
}

class _MyBottomSheetExampleState extends State<MyBottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Bar"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: () {
            showModalBottomSheet(context: context,
            backgroundColor: Colors.teal,
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ), 
            builder: (context){
                return SizedBox(
                  height: 220,
                  child: Center(child: Text("My Model Bottom Sheet")),
                );
            });
          }, 
          child: Text("My Bottom Sheet")),
        ),
      ),
    );
  }
}