import "package:flutter/material.dart";

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title : Text("Container Example"),
      ),
     body : Center(
       child: Container(
        height: 300,

        
        width: 300,
        color: Color.fromARGB(255, 148, 113, 125),
        child: Center(child: Text("Hello welcome to flutter")),
       ),
     )
    );
  }
}