

import 'package:flutter/material.dart';


class Myprofilescreen extends StatefulWidget {
  String? Username;
   Myprofilescreen({required this.Username});

  @override
  State<Myprofilescreen> createState() => _MyprofilescreenState();
}

class _MyprofilescreenState extends State<Myprofilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 20,right: 15),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blueAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/Profile.jpeg")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("",style: TextStyle(color: Colors.black,fontSize: 16)),
                      Text("mansikabariya@gmail.com",style: TextStyle(color: Colors.black,fontSize: 14)),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(child: Text("edit profile",style: TextStyle(color: const Color.fromARGB(255, 121, 120, 120),fontWeight: FontWeight.w500))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10),  
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.list,color: Colors.black,size: 30),
                          SizedBox(width: 25),
                          Text("My Orders",style: TextStyle(color: Colors.black,fontSize: 16)),
                          SizedBox(width: 130),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 207, 206, 206),
                            ),
                            child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.local_shipping,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Awaiting shipment",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 65),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Pending confirmation",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 41),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.done_outline,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Completed orders",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 67),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10,right: 10),  
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_add_outlined,color: Colors.black,size: 30),
                          SizedBox(width: 25),
                          Text("Invite friends",style: TextStyle(color: Colors.black,fontSize: 16)),
                          SizedBox(width: 100),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 207, 206, 206),
                            ),
                            child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.headphones_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Customer Service",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 66),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.book_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Write a review",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 95),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Divider(
                          color: const Color.fromARGB(255, 126, 125, 125),
                          indent: 50,
                          endIndent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star_border_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Rate Us",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 140),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 207, 206, 206),
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_right_outlined)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}