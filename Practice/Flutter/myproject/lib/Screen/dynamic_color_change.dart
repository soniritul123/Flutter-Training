import 'package:flutter/material.dart';

class MyButtonExample extends StatefulWidget {
  const MyButtonExample({super.key});

  @override
  State<MyButtonExample> createState() => _MyButtonExampleState();
}

class _MyButtonExampleState extends State<MyButtonExample> {
  Color? colorname = Colors.white; // default color set
  bool? status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Background Color")
        ),
      body: Container(
          height: 300,
          width: double.maxFinite,
          color: colorname,
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click Button"),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (status == true)
                  {
                    colorname = Colors.grey;
                    status = false;
                  }else{
                    colorname = Colors.lightGreen;
                    status = true;
                  }
                });
              }, child: Text("Color"),)
            ],
          ),
    ),
    );
  }
}