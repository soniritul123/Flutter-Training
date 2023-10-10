/*
Write a program to make addition, Subtraction, Multiplication and
Division of Two Numbers.
*/
import 'dart:io';
void main(){
  int a,b,c;
  
  print("Enter first number:");
  a=int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  b=int.parse(stdin.readLineSync()!);

  c = a+b;
  print("Sum of two numbers: $c");

  c = a-b;
  print("subtraction of two numbers: $c");

  c = a*b;
  print("Multiplication of two numbers: $c");

  c= a~/b;
  print("Division of two numbers: $c");

}
