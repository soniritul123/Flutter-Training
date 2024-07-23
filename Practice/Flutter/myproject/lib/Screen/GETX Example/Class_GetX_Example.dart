import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetXClassExample extends StatelessWidget {
      MyGetXClassExample({super.key});

  // object creation

  var myclass = MyClassGetX();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Class Example"),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => Text("${myclass.person_name.value} - ${myclass.subject.value}"),),
            ElevatedButton(onPressed: (){
              if(myclass.status == true)
              {
                  myclass.person_name.value = "Rutwa";
                  myclass.subject.value = "Java";
                  myclass.status.value = false;
              }
              else
              {
                  myclass.person_name.value = "Ritul";
                  myclass.subject.value = "Flutter";
                  myclass.status.value = true;
              }
              
            }, child: Text("Change")),
          ],
        ),
      ),
    );
  }
}

class MyClassGetX
{
  var person_name = "Ritul".obs;
  var subject = "Flutter".obs;
  var status = true.obs;
}