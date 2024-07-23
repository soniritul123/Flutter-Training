import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialogExampleGetx extends StatelessWidget {
  const MyDialogExampleGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Example"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: (){
            Get.defaultDialog(
              title: "Alert",
              middleText: "Are you sure you want to open?",
              confirm: ElevatedButton(
                onPressed: (){
                  print("Yes");
                }, child: Text("Yes"),),
                confirmTextColor: Colors.black,
                cancel: ElevatedButton(
                  onPressed: (){
                    print("No");
                  }, child: Text("No")),
                  cancelTextColor: Colors.teal,
            );
          }, 
          child: Text("Open Dialog")),
      ),
    );
  }
}