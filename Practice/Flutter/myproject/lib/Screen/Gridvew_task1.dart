import 'package:flutter/material.dart';

class GridviewExampleDemo extends StatefulWidget {
  const GridviewExampleDemo({super.key});

  @override
  State<GridviewExampleDemo> createState() => _GridviewExampleDemoState();
}

class _GridviewExampleDemoState extends State<GridviewExampleDemo> {
  List<String> myProducts = [
    "https://m.media-amazon.com/images/I/71pXoRVW9tL._AC_UF894,1000_QL80_DpWeblab_.jpg",
    "https://m.media-amazon.com/images/I/81tdlNXFbRS.jpg",
    "https://m.media-amazon.com/images/I/61GxGTUqOxL._AA360_AC_.jpg",
    "https://i.pinimg.com/736x/4a/f1/96/4af196a847431b7202bd60146499fd60.jpg",
    "https://i.shgcdn.com/acc08890-e90c-4156-aacc-e57041f5656f/-/format/auto/-/preview/3000x3000/-/quality/lighter/",
    "https://media.glamourmagazine.co.uk/photos/6152f046a529a9cdeb0a43a9/4:3/w_1920,h_1440,c_limit/BEDROONCHAIRS280921_DEFAULT1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(14),
            child: Container(
              height: 38,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://img.freepik.com/premium-photo/white-room-with-chair-window-with-winter-scene-scandinavian-style-decorating_872147-2661.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.2)
                      ],
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "LifeStyle Sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Clickeddd");
                      },
                      child: Container(
                        height: 60,
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                // myProducts.map((e) => Card(
                //   child: Container(
                //     decoration: BoxDecoration(
                //       image: DecorationImage(image: NetworkImage(e),fit: BoxFit.cover)

                //     ),
                //   ),
                // )).toList();
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/I/71pXoRVW9tL._AC_UF894,1000_QL80_DpWeblab_.jpg"))),
                  ),
                ),
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/I/81tdlNXFbRS.jpg"))),
                  ),
                ),
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/I/71pXoRVW9tL._AC_UF894,1000_QL80_DpWeblab_.jpg"))),
                  ),
                ),
                Card(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://m.media-amazon.com/images/I/71pXoRVW9tL._AC_UF894,1000_QL80_DpWeblab_.jpg"))),
                  ),
                ),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
