/*
Write a program to convert temperature from degree centigrade to
Fahrenheit.
*/
import 'dart:io';

void main(){

  double? degree;
  double fahrenheit;

  print("Enter the value of degree:");
  degree=double.parse(stdin.readLineSync()!);

  fahrenheit=(degree*1.8)+32;

  print("Degree of Fahrenheit = $fahrenheit");
}