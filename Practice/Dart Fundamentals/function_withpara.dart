import 'dart:io';

void main(){
  int i;
  int num;

  print("Enter the number: ");
  num=int.parse(stdin.readLineSync()!);

  addition(num);  // function calling
}

void addition(int num) // function with parameter
{
  print("Sum = ${num + num}");
}