
import 'package:firebasechataap/Advance_App_Developmnt/AllCategories.dart';
import 'package:firebasechataap/Advance_App_Developmnt/Cart.dart';
import 'package:firebasechataap/Advance_App_Developmnt/Favourite.dart';
import 'package:firebasechataap/Advance_App_Developmnt/ProfilePage.dart';
import 'package:flutter/material.dart';
//import "package:cupertino_icons/cupertino_icons.dart";


class Myhomescreen extends StatefulWidget {
  String? Username;
 Myhomescreen({required this.Username});

  @override
  State<Myhomescreen> createState() => _MyhomescreenState();
}

class _MyhomescreenState extends State<Myhomescreen> {
  @override
  Widget build(BuildContext context) {
    var Username;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 247, 247),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 249, 247, 247),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    "Hi, Ritul!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Search",
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 23,
                              color: Color.fromRGBO(184, 172, 172, 1)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 57,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(204, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child:
                                Icon(Icons.align_horizontal_center_outlined)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(67, 68, 71, 1)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.25))
                            ],
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(255, 192, 118, 1),
                                  Color.fromRGBO(196, 113, 65, 1),
                                  Color.fromRGBO(156, 60, 30, 1),
                                ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/T-shirt.png",
                              color: Colors.white,
                              height: 35,
                              width: 34,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.25))
                            ],
                            color: Color.fromRGBO(24, 205, 202, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Cosmetics.png",
                              //color: Colors.white,
                              height: 40,
                              width: 34,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.25))
                            ],
                            color: Color.fromRGBO(197, 9, 32, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Shoes.png",
                              //color: Colors.white,
                              height: 35,
                              width: 34,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mycategories(),
                            ));
                      },
                      child: Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: Color.fromRGBO(0, 0, 0, 0.25))
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_right_sharp,
                                color: Colors.black,
                                size: 35,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Clothes",
                      style: TextStyle(color: Color.fromRGBO(172, 179, 191, 1)),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    Text("cosmetics",
                        style:
                            TextStyle(color: Color.fromRGBO(172, 179, 191, 1))),
                    SizedBox(
                      width: 48,
                    ),
                    Text("shoes",
                        style:
                            TextStyle(color: Color.fromRGBO(172, 179, 191, 1))),
                    SizedBox(
                      width: 62,
                    ),
                    Text("See all",
                        style: TextStyle(color: Color.fromRGBO(172, 179, 191, 1)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(67, 68, 71, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/MainImage.jpg",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 159,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.25))
                        ],
                      ),
                      child: Column(
                        children: [
                          //SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color.fromRGBO(255, 105, 105, 1),
                                  ))
                            ],
                          ),
                
                          Image.asset(
                            "assets/images/Bag.png",
                            height: 66,
                            width: 66,
                          ),
                
                          Center(
                              child: Text(
                            "Adidas Bagpack",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                
                          Text("@100.00")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 159,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.25))
                        ],
                      ),
                      child: Column(
                        children: [
                          //SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color.fromRGBO(255, 105, 105, 1),
                                  ))
                            ],
                          ),
                
                          Image.asset(
                            "assets/images/Scarf.png",
                            height: 66,
                            width: 66,
                          ),
                
                          Center(
                              child: Text(
                            "Red Scaf",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                
                          Text("@50.00")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 159,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.25))
                        ],
                      ),
                      child: Column(
                        children: [
                          //SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Color.fromRGBO(255, 105, 105, 1),
                                  ))
                            ],
                          ),
                
                          Image.asset(
                            "assets/images/BlueShoes.png",
                            height: 66,
                            width: 66,
                          ),
                
                          Center(
                              child: Text(
                            "Nike Air Max",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          )),
                
                          Text("@150.00")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Mansi",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("ritulsoni@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Myprofilescreen(Username: ' '),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Cart '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mycartscreen(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My favorite '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myfavoritescreen(),
                    ));
              },
            ),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
