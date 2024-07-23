import 'package:flutter/material.dart';
import 'package:interviewcrack/Addition_Screen2.dart';

class MyFactorialExample extends StatefulWidget {
  const MyFactorialExample({super.key});

  @override
  State<MyFactorialExample> createState() => _MyFactorialExampleState();
}

class _MyFactorialExampleState extends State<MyFactorialExample> {
  int? result;
  int? num;
  TextEditingController mynumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Factorial"),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mynumController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Enter Number",
                      labelText: "Num",
                    
                    ),
                  
              ),
            ),
            
            ElevatedButton(
              onPressed: (){
                setState(() {
                  num = int.parse(mynumController.text);
                });
                  factorial();

                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyDisplayScreen(result: result),));
              }, 
              child: Text("Submit"))
          ],
      ),
      
    );
  }
  void factorial() {
   int? i = 1;
   int? fact = 1;

  for (i = 1; i! <= num!; i++) {
    fact = fact! * i;
     setState(() {
     result = fact;
     // print(result);
  });
  }
 
}
}

