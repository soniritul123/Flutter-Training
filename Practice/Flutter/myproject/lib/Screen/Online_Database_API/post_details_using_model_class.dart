import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPOSTUSINGMODEL extends StatefulWidget {
  const MyPOSTUSINGMODEL({super.key});

  @override
  State<MyPOSTUSINGMODEL> createState() => _MyPOSTUSINGMODELState();
}
// creating model class is here

class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  // constructor
  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  // but from api data return in json format in Map so, we return Post class object

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }
}

class _MyPOSTUSINGMODELState extends State<MyPOSTUSINGMODEL> {
  late Future<Post> myFutureData;

  Future<Post> fetchData() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("something went wrong");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    myFutureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POST USING MODEL MAP"),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder(
        future: myFutureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Card(
              child: Text(snapshot.data!.body!),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
