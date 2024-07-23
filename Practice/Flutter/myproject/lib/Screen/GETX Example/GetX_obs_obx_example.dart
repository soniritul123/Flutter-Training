import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyobsobxeExample extends StatelessWidget {
  var Count = 0.obs;

  void updateConter(){
    Count++;
  }


  MyobsobxeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State mangement"),
      ),
      body: Column(
        children: [
          Obx(() => Text("$Count")),
          Text("$Count"), // it will not reflact

        ElevatedButton(onPressed: (){
          updateConter();
        }, child: Text("Change"))
        ],
      ),
    );
  }
}