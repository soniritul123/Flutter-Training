import 'package:flutter/material.dart';

class MyConditional extends StatefulWidget {
  const MyConditional({super.key});

  @override
  State<MyConditional> createState() => _MyConditionalState();
}

class _MyConditionalState extends State<MyConditional> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            color: status ? Colors.teal : Colors.lightGreen ,
          ),
          ElevatedButton(onPressed: () { 
            setState(() {
              if(status){
                status = false;
              }else{
                status = true;
              }
            });
          }, child: Text("Change"))
        ],
      ),
    );
  }
}