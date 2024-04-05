import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MYPostDetail extends StatefulWidget {
  int? id;
  MYPostDetail({super.key, required this.id});

  @override
  State<MYPostDetail> createState() => _MYPostDetailState();
}

class _MYPostDetailState extends State<MYPostDetail> {
  int? id;
  String? title, body;

  //late var myRecords = null;
  Future<void> fetchData() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/${widget.id}"));

    if (response.statusCode == 200) {
      setState(() {
        var myRecords = jsonDecode(response.body);
        id = myRecords["id"];
        title = myRecords["title"];
        body = myRecords["body"];

        print("--------------->>>> ID $id ");
        print("--------------->>>> ID $title ");
      });
    } else {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("want post of ${widget.id}");
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("POST DETAILS"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("ID : $id"),
              Text("TITLE :$title"),
              Text("BODY : $body"),
            ],
          ),
        ));
  }
}
