import 'package:flutter/material.dart';

class MyListBuilder extends StatefulWidget {
  const MyListBuilder({super.key});

  @override
  State<MyListBuilder> createState() => _MyListBuilderState();
}

class _MyListBuilderState extends State<MyListBuilder> {
  List productlist = ["TV", "AC", "Laptop", "Mobile", "fridge", "washing machine"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: productlist.length,
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: Card(
              elevation: 20,
              margin: EdgeInsets.all(20),
              child: Center(child: Text(productlist[index])),
            ),
          );
        }),
    );
  }
}