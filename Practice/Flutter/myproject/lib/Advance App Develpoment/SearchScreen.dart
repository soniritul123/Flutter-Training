import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Search",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                SizedBox(width: 235),
                Icon(Icons.close,color: Colors.red),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Looking for something?',
                    prefixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Text("Recently Searched",style: TextStyle(color: Colors.grey,fontSize: 14)),
                  SizedBox(width: 155),
                  Text("Clear",style: TextStyle(color: Colors.grey,fontSize: 14)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 131, 130, 130),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/images/BlueShoes.png",height: 50,fit: BoxFit.cover,)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Nike Air Max",style: TextStyle(color: const Color.fromARGB(255, 114, 114, 114),fontSize: 14)),
                              Text("@100.00",style: TextStyle(color: const Color.fromARGB(255, 114, 114, 114),fontSize: 14),),
                            ],
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 131, 130, 130),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/images/Bag.png",height: 50,fit: BoxFit.cover,)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Adidas\nBackpack",style: TextStyle(color: const Color.fromARGB(255, 114, 114, 114),fontSize: 14)),
                              Text("@100.00",style: TextStyle(color: const Color.fromARGB(255, 114, 114, 114),fontSize: 14),),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("For you",style: TextStyle(color: Colors.grey,fontSize: 16)),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color.fromARGB(255, 112, 112, 112)),
                  ),
                  child: Center(child: Text("Adidas",style: TextStyle(color: const Color.fromARGB(255, 112, 112, 112)),)),
                ),
                Container(),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}