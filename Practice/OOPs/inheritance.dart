/*

inheritance : one class derived properties of another class 
inheritance which is provide reusability

using of inheritance we can reduce our code

there are maily 5 types of inheritance

1) single level inheritance
2) multi-level inheritance
3) multi-ple inheritance
4) hybrid inheritance
5) hierarchical inheritance

Multiple inheritance and Hybrid inheritance can't support dart language.



*/

// single level inheritance:


import 'dart:io';

class Parent
{
  // instance variable
  int? num1, num2;
  void input(){
    print("Enter number 1: ");
    num1 = int.parse(stdin.readLineSync()!);

    print("Enter number 2: ");
    num2 = int.parse(stdin.readLineSync()!);
  }
}

class Child extends Parent
{
  int? ans;
  void display(){
    
    ans = num1! + num2!;
    print("Answer = $ans");

  }
}

void main()
{ 
  // always create object of child class
  var child = new Child();
  child.input();
  child.display();
  
}