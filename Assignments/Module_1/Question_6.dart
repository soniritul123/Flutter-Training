/*
Write a program to find the simple Interest.
*/
import 'dart:io';

void main(){

  double time;
  double rat_of_interest;
  double principal;
  double? Amount;

  print("Enter the Time: ");
  time=double.parse(stdin.readLineSync()!);

  print("Enter the rate: ");
  rat_of_interest=double.parse(stdin.readLineSync()!);

  print("Enter the principal: ");
  principal=double.parse(stdin.readLineSync()!);

  Amount=(principal*time*rat_of_interest)/100;
  print("Simple Interest: $Amount");

  
}