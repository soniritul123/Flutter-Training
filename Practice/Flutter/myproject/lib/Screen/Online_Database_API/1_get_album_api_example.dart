import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyGetAlbumAPI extends StatefulWidget {
  const MyGetAlbumAPI({super.key});

  @override
  State<MyGetAlbumAPI> createState() => _MyGetAlbumAPIState();
}

class Album { //creatng model class
  int? userId;
  int? id;
  String? title;

  Album(
      {required this.userId,
      required this.id,
      required this.title}); // constructor

  // return album constructor which accept json
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json["userId"], id: json["id"], title: json["title"]);
  }
}


class _MyGetAlbumAPIState extends State<MyGetAlbumAPI> {

  List<Album> allAlbumList = [];
  Future<List<Album>> fetchData() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data.map((e) => Album.fromJson(e)).toList();
    } 
    else {
      throw Exception("Something went wrong");
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData().then((value) {
      setState(() {
         allAlbumList = value;
      });
     
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Album API"),
      ),
      body: ListView.builder(
        itemCount: allAlbumList.length,
        itemBuilder:(context, index) {
          return Card(
            child: Text("${allAlbumList[index].title}"),
          );
        }, ),
    );
  }
}