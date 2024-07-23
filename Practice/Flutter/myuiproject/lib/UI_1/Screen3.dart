import 'package:flutter/material.dart';

class MyScreen3 extends StatefulWidget {
  const MyScreen3({super.key});

  @override
  State<MyScreen3> createState() => _MyScreen3State();
}

class _MyScreen3State extends State<MyScreen3> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text("Popular Food", style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 290, top: 10),
              child: Icon(Icons.search, color: Colors.white, size: 20,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Icon(Icons.shopping_cart, color: Colors.white, size: 20,),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Text("Popular Food", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Text("Items", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        ),

      Row(
        children: [
          Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                  height: 220,
                  width: 190,
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
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20, left: 30 ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]),
                  height: 220,
                  width: 190,
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
        ],
      ),
      Row(
        children: [
                        Padding(
                padding: const EdgeInsets.only( top: 20, left: 45),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]
                  ),
                   height: 220,
                  width: 190,
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
                padding: const EdgeInsets.only(right: 20, top: 20, left: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700]
                  ),
                  height: 220,
                  width: 190,
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
        ],
      )
      ]),
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