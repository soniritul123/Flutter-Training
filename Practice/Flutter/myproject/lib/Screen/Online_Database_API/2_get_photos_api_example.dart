import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPhotosAPI extends StatefulWidget {
  const MyPhotosAPI({super.key});

  @override
  State<MyPhotosAPI> createState() => _MyPhotosAPIState();
}

class Photos { //creatng model class
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photos(
      {required this.albumId,
      required this.id,
      required this.title, required this.url, required this.thumbnailUrl}); // constructor

  // return album constructor which accept json
  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(albumId: json["albumId"], id: json["id"], title: json["title"], url: json["url"], thumbnailUrl: json["thumbnailUrl"]);
  }
}


class _MyPhotosAPIState extends State<MyPhotosAPI> {

  List<Photos> myphotosList = [];
  Future<List<Photos>> fetchData() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data.map((e) => Photos.fromJson(e)).toList();
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
         myphotosList = value;
      });
     
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Photos API"),
      ),
      body: ListView.builder(
        itemCount: myphotosList.length,
        itemBuilder:(context, index) {
          return Card(
            //child: Text("${myphotosList[index].title}"),
            child: Image.network("${myphotosList[index].url!}"), //flutter run -d chrome --web-renderer html
          );
        }, ),
    );
  }
}