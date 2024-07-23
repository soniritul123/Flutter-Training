import 'package:flutter/material.dart';
import 'package:myuiproject/UI_2/Screen2.dart';

class MyScreen1 extends StatefulWidget {
  const MyScreen1({super.key});

  @override
  State<MyScreen1> createState() => _MyScreen1State();
}

class _MyScreen1State extends State<MyScreen1> {
  TextEditingController _searchController = TextEditingController();
 
  Color? colorname = Colors.orange[700];
  Color? colorname1 = Colors.white;
  Color? colorname2 = Colors.white;
  Color? colorname3 = Colors.white;// default color set
  bool? status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(
                    color : Colors.white,
                   // border : Border.all(width: 2, color: Colors.black),
                    boxShadow: [
                       BoxShadow(color: Colors.black, blurRadius: 10)
                        ],
                    borderRadius: BorderRadius.circular(5),),
                  child: Icon(Icons.menu),),
              ),
            Padding(
                padding: const EdgeInsets.only(left: 410, top: 10),
                child: Container(
                  height: 33,
                  width: 35,
                  decoration: BoxDecoration(
                    color : Colors.yellow[600],
                   // border : Border.all(width: 2, color: Colors.black),
                    // boxShadow: [
                    //    BoxShadow(color: Colors.black, blurRadius: 10)
                    //     ],
                    borderRadius: BorderRadius.circular(5),),
                  child: Image.asset("assets/images/Person.png")),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("Let's eat",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Quality food 😋",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Container(
                  //height: 50,
                  width: 420,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search food..",
                    ),
                  
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 25),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.search,color: Colors.white),
                ),
              ),
            ],
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
          
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                        onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname = Colors.orange[700];
                            status = false;
                            colorname3 = Colors.white;
                            colorname2 = Colors.white;
                            colorname1 = Colors.white;
                          }else{
                            colorname = Colors.white;
                            status = true;
                          }
                        });
                    },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                            ],
                          color: colorname,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Image.asset("assets/images/Food.png", fit: BoxFit.cover, height: 30, width: 30,),
                           ),
                           Padding(
                              padding: const EdgeInsets.only(left: 8),
                             child: Text("Fast Food", style: TextStyle(fontSize: 12,color: Colors.black),),
                           ),
                          ],
                        ),
                      ),
                    ),
                ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: GestureDetector(
                    onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname1 = Colors.orange[700];
                            status = false;
                            colorname = Colors.white;
                            colorname2 = Colors.white;
                            colorname3 = Colors.white;
                          }else{
                            colorname1 = Colors.white;
                            status = true;
                          }
                        });
                    },
                   child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                        color: colorname1,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Image.asset("assets/images/fruit.png", fit: BoxFit.cover, height: 30, width: 30,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: Text("Fruit Item", style: TextStyle(fontSize: 12,color: Colors.black),),
                         ),
                        ],
                      ),
                    ),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname2 = Colors.white;
                            status = false;
                          }else{
                            colorname2 = Colors.orange[700];
                            status = true;
                            colorname = Colors.white;
                            colorname1 = Colors.white;
                            colorname3 = Colors.white;
                          }
                        });
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                        color: colorname2,
                        borderRadius: BorderRadius.circular(15),),
                      child: Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Image.asset("assets/images/vegetable.png", fit: BoxFit.cover, height: 30, width: 30,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: Text("Vegetable", style: TextStyle(fontSize: 12,color: Colors.black),),
                         ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                        setState(() {
                          if (status == true)
                          {
                            colorname3 = Colors.white;
                            status = false;
                          }else{
                            colorname3 = Colors.orange[700];
                            status = true;
                            colorname = Colors.white;
                            colorname2 = Colors.white;
                            colorname1 = Colors.white;
                          }
                        });
                    },

                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                          ],
                        color: colorname3,
                        borderRadius: BorderRadius.circular(15),),
                      child: Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Image.asset("assets/images/snacks.png", fit: BoxFit.cover, height: 30, width: 30,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8),
                           child: Text("Snacks", style: TextStyle(fontSize: 12,color: Colors.black),),
                         ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 250,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/fast food_1.jpg", fit: BoxFit.cover,height: 120, width: 150,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Center(child: Text("Panner Wrap",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Center(child: Text("Spicy wrap with vegetables",style: TextStyle(fontSize: 12),)),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top: 7),
                       child: Center(child: Text(" ️‍🔥 78 Calories",style: TextStyle(fontSize: 12, color: Colors.orange))),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Center(child: Text(" ₹ 9.8 ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
                     ),
                    ],
                  ),
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyScreen2()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                    
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 250,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                           borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/images/fast food_2.jpg", fit: BoxFit.cover,height: 120, width: 150,)),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Center(child: Text("Noodles",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Center(child: Text("Spicy noodles",style: TextStyle(fontSize: 12),)),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 7),
                         child: Center(child: Text(" ️‍🔥 60 Calories",style: TextStyle(fontSize: 12, color: Colors.orange))),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Center(child: Text(" ₹ 8.5 ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
                       ),
                      ],
                    ),
                  ),
                ),
              ),
            Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 250,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/fast food_3.jpg", fit: BoxFit.cover,height: 120, width: 150,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Center(child: Text("Full Meal",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Center(child: Text("Roti-sbji with Dal-rice",style: TextStyle(fontSize: 12),)),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(top: 7),
                       child: Center(child: Text(" ️‍🔥 80 Calories",style: TextStyle(fontSize: 12, color: Colors.orange))),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Center(child: Text(" ₹ 9.5 ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
                     ),
                    ],
                  ),
                ),
              ),
           ],
          ),
        ),

        ],
      ) ,
      bottomNavigationBar: BottomNavigationBar(
      
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "", backgroundColor: Colors.white ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "" , backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "" , backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "" , backgroundColor: Colors.white),

        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        elevation: 5,
        ),
    );
  }
}