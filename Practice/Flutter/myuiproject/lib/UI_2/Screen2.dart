import 'package:flutter/material.dart';

class MyScreen2 extends StatefulWidget {
  const MyScreen2({super.key});

  @override
  State<MyScreen2> createState() => _MyScreen2State();
}

class _MyScreen2State extends State<MyScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color : Colors.white,
                   // border : Border.all(width: 2, color: Colors.black),
                    boxShadow: [
                       BoxShadow(color: Colors.black, blurRadius: 10)
                        ],
                    borderRadius: BorderRadius.circular(5),),
                  child: Icon(Icons.arrow_back),),
              ),
            Padding(
                padding: const EdgeInsets.only(left: 410, top: 10),
                child: Container(
                  height: 33,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),),
                    child: Icon(Icons.shopping_bag),
                  ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 300,
              width: 470,
              color: Colors.transparent,
              child: Image.asset("assets/images/fast food_2.jpg", fit: BoxFit.fill,)),
          ),

          Center(
            child: Container(
              height: 25,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow[700]
              ),
              child: Center(child: Text("- 1 +", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Spicy Noodles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 5),
                child: Text("Chinese", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330, right: 10),
                child: Text("₹ 6.99", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              )
            ],
          ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Icon(Icons.star, color: Colors.yellow,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Text("2.6"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Text(" ️‍🔥", style: TextStyle(color: Colors.orange),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Text("65 Calories"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Icon(Icons.lock_clock, color: Colors.red,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10, right: 10),
              child: Text("20-30 min"),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text("Details",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text("Noodles is the term being used to designate products made from blend of flours, the major component of which is tapioca flour and maida. A noodle is manufactured in different sizes, hollow as well as solid, for different cooking methods.",style: TextStyle(fontSize: 10),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text("Ingredients",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/Food.png", fit: BoxFit.cover, height: 40, width: 40,),
              Image.asset("assets/images/fruit.png", fit: BoxFit.cover,height: 40, width: 40,),
              Image.asset("assets/images/vegetable.png", fit: BoxFit.cover, height: 40, width: 40,),
              Image.asset("assets/images/snacks.png", fit: BoxFit.cover, height: 40, width: 40,),
            ],
          ),
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Center(child: Icon(Icons.add)),),
    );
  }
}