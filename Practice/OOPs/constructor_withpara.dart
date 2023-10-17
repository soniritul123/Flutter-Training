import 'dart:io';

class Student{
  Student(String? name){
    print("Hello ${name} welcome to tops technologies");
  }
}

void main(){
  // object creation
  String? studentname;

  print("Enter Student name:");
  studentname=stdin.readLineSync()!;

  var obj = Student(studentname);
  
  }