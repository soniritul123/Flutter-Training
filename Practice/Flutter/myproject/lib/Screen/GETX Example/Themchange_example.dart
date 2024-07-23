import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyThemeChange extends StatelessWidget {
  const MyThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Change"),
      ),
      body: Container(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: (){
                Get.changeTheme(ThemeData.dark());
              }, child: Text("Dark Mode")),
            ElevatedButton(
              onPressed: (){
                Get.changeTheme(ThemeData.light());
                
              }, 
              child: Text("Light Mode"))
          ],
        ),
      ),
    );
  }
}