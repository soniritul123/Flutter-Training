

import 'package:flutter/material.dart';


class Myprofilescreen2 extends StatefulWidget {
  const Myprofilescreen2({super.key});

  @override
  State<Myprofilescreen2> createState() => _Myprofilescreen2State();
}

class _Myprofilescreen2State extends State<Myprofilescreen2> {
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
                      Text("Mansi Kabariya",style: TextStyle(color: Colors.black,fontSize: 16)),
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
                          Icon(Icons.location_on_outlined,color: Colors.black,size: 30),
                          SizedBox(width: 25),
                          Text("Shipping Address",style: TextStyle(color: Colors.black,fontSize: 16)),
                          SizedBox(width: 75),
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
                            Icon(Icons.credit_card_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Payment Pending",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 70),
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
                            Icon(Icons.currency_pound_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Currency",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 135),
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
                            Icon(Icons.language_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Language",style: TextStyle(color: Colors.black,fontSize: 16)),
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
                          Icon(Icons.notifications_outlined,color: Colors.black,size: 30),
                          SizedBox(width: 25),
                          Text("Notification",style: TextStyle(color: Colors.black,fontSize: 16)),
                          SizedBox(width: 110),
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
                            Icon(Icons.policy_outlined,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Privacy policy",style: TextStyle(color: Colors.black,fontSize: 16)),
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
                            Text("FAQ",style: TextStyle(color: Colors.black,fontSize: 16)),
                            SizedBox(width: 170),
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
                            Icon(Icons.info_outline,color: Colors.black,size: 30),
                            SizedBox(width: 25),
                            Text("Legal Info",style: TextStyle(color: Colors.black,fontSize: 16)),
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