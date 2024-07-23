import 'package:flutter/material.dart';

class MyDisplayList extends StatefulWidget {
  const MyDisplayList({super.key});

  @override
  State<MyDisplayList> createState() => _MyDisplayListState();
}

class _MyDisplayListState extends State<MyDisplayList> {
  List<int> numberList = [11, 12, 15];
  int? num;
  TextEditingController mynumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display List"),
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
                      hintText: "Enter a Number",
                      labelText: "Num",
                    
                    ),
              ),
            ),

          ElevatedButton(
            
              onPressed: (){
                  setState(() {
                  num = int.parse(mynumController.text);
                  print(num);
                  numberList.add(num!);
                });
                mynumController.clear();
              }, 
              child: Text("Add")),

          ListView.builder(
            shrinkWrap: true,
            itemCount: numberList.length,
            itemBuilder: (context, index){
              return Container(
               
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      numberList.removeAt(index);
                });
                  },
                  child: Card(
                    
                    //elevation: 20,
                    margin: EdgeInsets.all(20),
                    child: Center(child: Text("${numberList[index]}")),
                  ),
                ),
              );
            }),
        ],
      ),
    );
  }
}