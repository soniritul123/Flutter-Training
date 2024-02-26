import 'package:flutter/material.dart';

class MyListexample1 extends StatefulWidget {
  const MyListexample1({super.key});

  @override
  State<MyListexample1> createState() => _MyListexample1State();
}

class _MyListexample1State extends State<MyListexample1> {
  @override
  TextEditingController _subjectController = TextEditingController();
  List? subjectList = [];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _subjectController,
              decoration: InputDecoration(
                hintText: "Enter your Subject",
                labelText: "Subject",
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              subjectList!.add(_subjectController.text.toString());
              print(subjectList);
              _subjectController.text = "";
            });
          }, child: Text("Add")),
          Expanded(child: ListView.builder(
            itemCount: subjectList!.length,
            itemBuilder: (context, index){
              return Container(
            margin: EdgeInsets.all(3),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: GestureDetector( 
              onTap: (){
                setState(() {
                  _subjectController.text = subjectList![index];
                });
              },
              onLongPress: (){
                print("=====>${subjectList![index]}");
                setState(() {
                  subjectList!.removeAt(index);
                });
              },
              child: Card(
                elevation: 20,
                margin: EdgeInsets.all(8),
                child: Center(child: Text(subjectList![index])),
              )
              
            ),
          );
          }))
        ],
      ),
    );
  }
}