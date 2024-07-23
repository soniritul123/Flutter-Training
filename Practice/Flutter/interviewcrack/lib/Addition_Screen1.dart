import 'package:flutter/material.dart';
import 'package:interviewcrack/Addition_Screen2.dart';

class MyAdditionExample extends StatefulWidget {
  const MyAdditionExample({super.key});

  @override
  State<MyAdditionExample> createState() => _MyAdditionExampleState();
}

class _MyAdditionExampleState extends State<MyAdditionExample> {
  int? result;
  int? num1;
  int? num2;

  TextEditingController mynum1Controller = TextEditingController();
  TextEditingController mynum2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition of two Numbers"),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mynum1Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter Number 1",
                      labelText: "Num1",
                    
                    ),
                  
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mynum2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter Number 2",
                      labelText: "Num2",
                    
                    ),
                  
              ),
            ),
            ElevatedButton(
              onPressed: (){
                  result = int.parse(mynum1Controller.text.toString()) + int.parse(mynum2Controller.text.toString()) ;
                  print(result);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyDisplayScreen(result: result),));
              }, 
              child: Text("Submit"))
          ],
      ),
      
    );
  }
}