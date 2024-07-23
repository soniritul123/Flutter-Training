import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyPostCreateAPI extends StatefulWidget {
  
  const MyPostCreateAPI({super.key});

  @override
  State<MyPostCreateAPI> createState() => _MYPostDetailState();
}

class _MYPostDetailState extends State<MyPostCreateAPI   > {
  int? id;
  String? name, job, body;

  //late var myRecords = null;
  Future<void> fetchData() async {
    var response = await http
        .post(Uri.parse("https://reqres.in/api/users"),
        body: {
          "name": "morpheus",
           "job": "leader"
        });

    if (response.statusCode == 201) {
      print("Records Added");
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 
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
              
              
            ],
          ),
        ));
  }
}
