import 'package:flutter/material.dart';

class MyQuestion49_2 extends StatefulWidget {
  const MyQuestion49_2({super.key});

  @override
  State<MyQuestion49_2> createState() => _MyQuestion49_2State();
}

class _MyQuestion49_2State extends State<MyQuestion49_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            height: 200,
            width: double.maxFinite,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnXOu6d8AXdjPaV2s_w81DsjQTvYmoX98Cw&usqp=CAU",fit: BoxFit.fill),
          ),
          SizedBox(
            height: 50,
          ),
          
          Text("Oeschinen Lake, Swizerland",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Kandersteg, Switzerland",  style: TextStyle(color: Colors.grey)),
          ),
        

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue,),
                  Text("Call", style: TextStyle(color: Colors.blue)),
                ],
              ),
          
              Column(
                children: [
                  Icon(Icons.route, color: Colors.blue,),
                  Text("Route", style: TextStyle(color: Colors.blue)),
                ],
              ),
            
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue,),
                  Text("Share", style: TextStyle(color: Colors.blue)),
                ],
              ),
              
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text("Lake Constance 536 km²Lake Thun 48.3 km² Oeschinen Lake 111 ha Oeschinen Lake Oeschinen Lake is a lake in the Bernese Oberland, Switzerland, 4 kilometres east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres, it has a surface area of 1.1147 square kilometres. Its maximum depth is 56 metres."),
          ),
        )
        ],
        
      ),
    );
  }
}