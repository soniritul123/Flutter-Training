import 'package:flutter/material.dart';

class MapListExample extends StatelessWidget {
  

  @override
  Map<String, String> mapData = {
    "student1" : "Ritul",
    "student2" : "Harsh",
    "student3" : "Chaitya",
  };
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map List Example"),
      ),
      body: ListView.builder(
        itemCount: mapData.length,
        itemBuilder: (context, index){
          var entry = mapData.entries.elementAt(index);
          return Card(
            child: Text("${entry.key} : ${entry.value}"),
          );
        }),
    );
  }
}