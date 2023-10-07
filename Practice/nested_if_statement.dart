/* 
Nested if

if inside the if statement

syntax:

if(condition)
{
    if(condition)
    {
      statement
    }
}

*/

import 'dart:io';

void main()
{
  int? marks;
  print("Enter your marks:");
  marks = int.parse(stdin.readLineSync()!);

 if(marks>=0 && marks<=100)
 {
      if (marks >= 70 && marks <= 100)
      {
      print("A");
      }else if (marks >= 60 && marks < 70)
      {
      print("B");
      }else if (marks >= 50 && marks < 60)
      {
      print("C");
      }else if (marks >= 40 && marks < 50)
      {
      print("D");
      }else{
      print("Fail");
      }
 }else{
     print("Invalid Input");
    }
 }
