import 'package:flutter/material.dart';

class MyListBuilder extends StatefulWidget {
  const MyListBuilder({super.key});

  @override
  State<MyListBuilder> createState() => _MyListBuilderState();
}

class _MyListBuilderState extends State<MyListBuilder> {
  List productlist = ["TV", "AC", "Laptop", "Mobile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: productlist.length,
        itemBuilder: (context, index){
          return Card(
            child: Text("${productlist[index]}"),
          );
        }),
    );
  }
}