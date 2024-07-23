//import 'package:flutter/material.dart';

class StudentModel
{
  int? id;
  String? name;
  String? subject;
  String? marks;

  //StudentModel({this.id, this.name, this.Subject, this.marks});

  //custom method

  studentMap()
  {
    var mapping = Map<String, dynamic>();
    
    mapping["id"] = id ?? null;
    mapping["name"] = name;
    mapping["Subject"] = subject;
    mapping["marks"] = marks;

    return mapping;
  }

}