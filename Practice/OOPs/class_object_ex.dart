import 'dart:io';


class Student{
  // data member
  int? score;
  String? name;

  void input(){

    print("Enter Name:");
    name=stdin.readLineSync()!;

    print("Enter score:");
    score=int.parse(stdin.readLineSync()!);
  }
  void display(){
    print("Name = $name");
    print("Score = $score");
  }
}
void main(){
  var student = Student();
  student.input();
  student.display();
}