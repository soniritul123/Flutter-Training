import 'package:flutter/material.dart';
import 'package:myuiproject/UI_1/Screen3.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController _searchController = TextEditingController();

  var currentindex = 0;

  void tapClick(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 20),
                  child: Icon(Icons.menu,color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180, right: 180, top: 20),
                  child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
                Padding(
                   padding: const EdgeInsets.only( top: 20, left: 10),
                  child: CircleAvatar(radius: 10,),
                )
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
      
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
          
              children: [
          
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                       Image.asset("assets/images/Food.png", fit: BoxFit.cover),
                       Padding(
                          padding: const EdgeInsets.only(left: 8),
                         child: Text("Food", style: TextStyle(fontSize: 16,color: Colors.white),),
                       ),
                      ],
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                       Image.asset("assets/images/Juice.png", fit: BoxFit.cover),
                       Padding(
                         padding: const EdgeInsets.only(left: 8),
                         child: Text("Juice", style: TextStyle(fontSize: 16,color: Colors.white),),
                       ),
                      ],
                    ),
                  ),
               ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Row(
                      children: [
                       Image.asset("assets/images/Dessert.png", fit: BoxFit.cover),
                       Padding(
                         padding: const EdgeInsets.only(left: 8),
                         child: Text("Dessert", style: TextStyle(fontSize: 16,color: Colors.white),),
                       ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Row(
                      children: [
                       Image.asset("assets/images/Chinese.png", fit: BoxFit.cover),
                       Padding(
                         padding: const EdgeInsets.only(left: 8),
                         child: Text("Chinese", style: TextStyle(fontSize: 16,color: Colors.white),),
                       ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 300, top: 10),
              child: Text("Popular Foods",style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyScreen3()));
                },
                child: Text("View All",style: TextStyle(fontSize: 13,color: Colors.white),)),
            )
          ],
        ),
      
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/Dosa.jpg", fit: BoxFit.cover,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("Dosa with Chutney",style: TextStyle(fontSize: 12,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("₹22.50",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text("4.9",style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            Icon(Icons.lock_clock, color: Colors.orange,),
                            Text("20 min",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                                  
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                  height: 200,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/Rice.jpg", fit: BoxFit.cover,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("Rice with Sbji",style: TextStyle(fontSize: 12,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("₹33.20",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text("4.9",style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            Icon(Icons.lock_clock, color: Colors.orange,),
                            Text("20 min",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                                  
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                  height: 200,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/Idli.jpg", fit: BoxFit.cover,height: 110,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("Idli Sambhar",style: TextStyle(fontSize: 12,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text("₹18.99",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Text("4.9",style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            Icon(Icons.lock_clock, color: Colors.orange,),
                            Text("20 min",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                                  
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 280, top: 15),
              child: Text("Nearby Restraurant",style: TextStyle(fontSize: 16,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 15),
              child: Text("View All",style: TextStyle(fontSize: 13,color: Colors.white),),
            )
          ],
        ),
        Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/Burger King.jpg", fit: BoxFit.cover, width: 510,)),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Text("Burger King",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text("4.4",style: TextStyle(fontSize: 10,color: Colors.white),),
                            ),
                            Icon(Icons.lock_clock, color: Colors.orange,),
                            Text("30 min",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                                  
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "", backgroundColor: Colors.white ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "" , backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "" , backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "" , backgroundColor: Colors.white),

        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        elevation: 5,
        onTap: tapClick,
        currentIndex: currentindex,
        ),
    );
    
  }
}