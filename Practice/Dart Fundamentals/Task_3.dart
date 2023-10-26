/*
Create menu of summation, multiplication, division, and substraction
accept choice from user and perform specific operation using of switch statement
*/

import 'dart:io';

void main(){
  int? choice;
  int a=5, b=10, c;

  String? menu = "Press 1 for Summation \n Press 2 for Multiplication \n Press 3 for Division \n Press 4 for Substraction";
  print(menu);

  print("Enter your choice:");
  choice = int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1:
      c=a+b;
      print("Summation: $c");
      break;
    case 2:
      c=a*b;
      print("Multiplication: $c");
      break;
    case 3:
      c=b~/a;
      print("Divsion: $c");
      break;
    case 4:
      c=b-a;
      print("Substraction: $c");
      break;

    default:
      print("Invalid Input");
  }
}