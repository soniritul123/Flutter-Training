import 'package:flutter/material.dart';

class MySearchExample extends StatefulWidget {
  const MySearchExample({super.key});

  @override
  State<MySearchExample> createState() => _MySearchExampleState();
}

class _MySearchExampleState extends State<MySearchExample> {
  @override
  
  TextEditingController _searchController = TextEditingController();

  List subjectList = ["c", "Java", "C++", "Python", "Flutter", "Javascript"];
  
  List fillteredList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      fillteredList.addAll(subjectList);
    });
  }
  void searchData(String keyword)
  {
    List sampleList  = [];
    setState(() {
      sampleList.addAll(subjectList);
  
    });
    
    if(keyword.isEmpty)
    {
      setState(() {
        fillteredList.clear();
        fillteredList.addAll(subjectList);
      });
    }
    else{
      setState(() {
        fillteredList.clear();
      });
      sampleList.forEach(
        ((element) {
          if(element.toLowerCase().contains(keyword.toLowerCase()))
          {
            setState(() {
              print("====> $element");
              fillteredList.add(element);
            });
          }
        }
       ));
    }

    print(keyword);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Example"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _searchController,
            onChanged: (value) {
              searchData(value);
            },
            decoration: InputDecoration(
              hintText: "Search", prefixIcon: Icon(Icons.search)
            ),

          ),
          Expanded(child: ListView.builder(
            itemCount: fillteredList.length,
            itemBuilder: (context, index){
              return Padding(padding: const EdgeInsets.all(10),
              child: Card(
                child: Padding(padding: const EdgeInsets.all(12),
                child: Center(child: Text("${fillteredList[index]}")),
                ),
              ),);
            }))
        ],
      ),
    );
  }
}

