import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyAlbumDetails extends StatefulWidget {
  int? id;
  MyAlbumDetails({super.key, required this.id});

  @override
  State<MyAlbumDetails> createState() => _MyAlbumDetailsState();
}

class Album {
  int? userId;
  int? id;
  String? title;

  Album(
      {required this.userId,
      required this.id,
      required this.title}); // constructor

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json["userId"], id: json["id"], title: json["title"]);
  }
}

class _MyAlbumDetailsState extends State<MyAlbumDetails> {
  //late var myRecords = null;
  Future<Album> fetchData() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums/${widget.id}"));

    if (response.statusCode == 200) {
      // var myRecords = jsonDecode(response.body);

      // return Album.fromJson(myRecords as Map<String, dynamic>);

      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("something went wrong");
    }
  }

  late Future<Album> myFutureData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("want post of ${widget.id}");
    myFutureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ALBUM DETAILS"),
        ),
        body: FutureBuilder(
          future: myFutureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Card(
                child: Text("${snapshot.data!.title}"),
              );
            }

            return CircularProgressIndicator();
          },
        ));
  }
}
