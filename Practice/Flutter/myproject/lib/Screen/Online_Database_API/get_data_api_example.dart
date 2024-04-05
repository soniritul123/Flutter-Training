import 'dart:convert';
import 'dart:math';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:myproject/Screen/Online_Database_API/Album_details_API.dart';
import 'package:myproject/Screen/Online_Database_API/Post_detail_API.dart';

class MyApiGetExample1 extends StatefulWidget {
  const MyApiGetExample1({super.key});

  @override
  State<MyApiGetExample1> createState() => _MyApiGetExample1State();
}

class _MyApiGetExample1State extends State<MyApiGetExample1> {
  List<dynamic> myData = []; // creating blank list - which contain all api data

  Future<dynamic> fetchRecord() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));

      print(response.statusCode);

      if (response.statusCode == 200) {
        setState(() {
          //print(jsonDecode(response.body));
          //myData.add(jsonDecode(response.body));

          myData = jsonDecode(response.body);
        });

       // print(myData);
      } else {
        print("api fetching error");
      }
    } catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRecord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API EXAMPLE 1"),
        backgroundColor: Colors.purple[200],
      ),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: (context, index) {
          return Container(
            child: GestureDetector(
              onDoubleTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MyAlbumDetails(id: myData[index]["id"]),
                    ));
              },
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MYPostDetail(id: myData[index]["id"]),
                    ));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("${myData[index]["title"]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
