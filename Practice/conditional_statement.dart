/*
Conditional Statements:

there are 5 types of conditional statements

1) if  staement
2) if..else statement
3) else if statement
4) nested if statement
5) switch statement
*/

import 'dart:io';

void main()
{
  int? age; //variable declaration

  print("Enter your age: "); // statement display
  age = int.parse(stdin.readLineSync()!);

  if (age >= 18){
    print("You are above 18");
  }
  else{
    print("You are below 18");
  }
}