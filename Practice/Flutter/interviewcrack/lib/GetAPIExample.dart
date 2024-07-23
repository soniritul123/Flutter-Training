import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyGetAPIExample extends StatefulWidget {
  const MyGetAPIExample({super.key});

  @override
  State<MyGetAPIExample> createState() => _MyGetAPIExampleState();
}

class House { //creatng model class
  String? houseno;
  String? name;
  String? contactno;
  String? age;
  String? gender;

  House(
      {required this.houseno,
      required this.name,
      required this.contactno, 
      required this.age, 
      required this.gender}); // constructor

  // return album constructor which accept json
  factory House.fromJson(Map<String, dynamic> json) {
    return House(houseno: json["houseno"], name: json["name"], contactno: json["contactno"], age: json["age"], gender: json["gender"]);
  }
}


class _MyGetAPIExampleState extends State<MyGetAPIExample> {

  List<House> allhouseList = [];
  Future<List<House>> fetchData() async {
    final response = await http.get(Uri.parse("https://theseaside.000webhostapp.com/FamilyDetails.php"));

    if (response.statusCode == 200) {
      print(response.statusCode);
      print("---------------------------------");
      List<dynamic> data = jsonDecode(response.body);
      List<House> housedetails = data.map((e) => House.fromJson(e)).toList();

      return housedetails;
    } 
    else {
      
      throw Exception("Something went wrong");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print(fetchData());
    fetchData().then((value) {
      setState(() {
        allhouseList = value;
        
      });
     
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get API"),
      ),
      body: ListView.builder(
        itemCount: allhouseList.length,
        itemBuilder:(context, index) {
          return Card(
            child: Text("${allhouseList[index].houseno}"),
          );
        }, ),

    );

  }
}