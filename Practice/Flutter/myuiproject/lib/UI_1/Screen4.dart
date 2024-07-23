import 'package:flutter/material.dart';

class MyScreen4 extends StatefulWidget {
  const MyScreen4({super.key});

  @override
  State<MyScreen4> createState() => _MyScreen4State();
}

class _MyScreen4State extends State<MyScreen4> {

  Color? colorname = Colors.orange[700];
  Color? colorname1 = Colors.black;// default color set
  bool? status = true;
  TextEditingController _searchController = TextEditingController();
  @override

   var currentindex = 0;

  void tapClick(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Container(
                height: 23,
                width: 23,
                child: Icon(Icons.arrow_back, color: Colors.white, size: 15,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border : Border.all(width: 2, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("Search", style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 360, top: 10),
              child: Icon(Icons.shopping_cart, color: Colors.white, size: 20,),
            ),
          ],
        ),

        Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Container(
                  height: 70,
                  width: 420,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      hintText: "Search",
                    ),
                  
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 5),
                child: Container(
                  
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.search,color: Colors.white),
                ),
              ),
            ],
          ),
      
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: GestureDetector(
                  onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname = Colors.orange[700];
                            status = false;
                            colorname1 = Colors.black;
                            
                          }else{
                            colorname = Colors.black;
                            status = true;
                          }
                        });
                    },
                  child: Container(
                    height: 50,
                    width: 170,
                    child: Center(child: Text("Food", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: colorname,
                    ),
                              ),
                ),
              ),

            Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: GestureDetector(
                  onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname1 = Colors.orange[700];
                            status = false;
                            colorname = Colors.black;
                           
                          }else{
                            colorname1 = Colors.black;
                            status = true;
                          }
                        });
                    },
                  child: Container(
                    height: 50,
                    width: 170,
                    child: Center(child: Text("Restraurant", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)), 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: colorname1,
                    ),
                              ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}