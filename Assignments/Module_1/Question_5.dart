/*
 Write a program to find the Area of Triangle
 */

import 'dart:io';
void main(){
  double hight;
  double base;
  double area;

  print("Enter the hight: ");
  hight=double.parse(stdin.readLineSync()!);

  print("Enter the base: ");
  base=double.parse(stdin.readLineSync()!);

 area = (hight*base)/2;
 print("Area of Triangle: $area");
}
