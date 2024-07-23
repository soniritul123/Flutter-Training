import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyGetApiExample3 extends StatefulWidget {
  const MyGetApiExample3({super.key});

  @override
  State<MyGetApiExample3> createState() => _MyGetApiExample3State();
}

class Users { //creatng model class
  
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

  Users(
      {required this.id,
      required this.email, required this.first_name, required this.last_name, required this.avatar}); // constructor

  // return album constructor which accept json
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(id: json["id"], email: json["email"], first_name: json["first_name"], last_name: json["last_name"], avatar: json["avatar"]);
  }
}


class _MyGetApiExample3State extends State<MyGetApiExample3> {

  List<Users> userList = [];
  int? totalPages;

  Future<List<Users>> fetchData() async {
    final response = await http.get(
        Uri.parse("https://reqres.in/api/users?page=2"));

    if (response.statusCode == 200) {
      
      var record = jsonDecode(response.body);
      setState(() {
        totalPages = record["total_pages"];
      });
      List<dynamic> recordList = record["data"];
      return recordList.map((e) => Users.fromJson(e)).toList();
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
         userList = value;
      });
     
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Pages: ${totalPages}"),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder:(context, index) {
          return Column(
            children: [
              Image.network("${userList[index].avatar!}", height: 30, width: 30,),
               //flutter run -d chrome --web-renderer html
              Text("Id: ${userList[index].id}"),
              Text("Email: ${userList[index].email}"),
              Text("First_name: ${userList[index].first_name}"),
            ],
        
            
          );
        }, ),
    );
  }
}