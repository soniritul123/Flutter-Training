/*
Write a Program to check the given number is Positive, Negative.
*/
import 'dart:io';
void main(){

  int num;
  print("Enter the number: ");
  num=int.parse(stdin.readLineSync()!);

  if(num>0){
    print("Number is positive");
  }
  else{
    print("Number is negative");
  }
}