/*
Accept 3 numbers from user and find out greatest number among this 3 numbers using of nested if statement.
*/

import 'dart:io';
void main(){

  int? num1, num2, num3;

  print("Enter number 1: ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2: ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter number 3: ");
  num3 = int.parse(stdin.readLineSync()!);

  if(num1 != num2 && num1 != num3 && num2 != num3){

      if(num1>num2 && num1>num3){
        print("Number $num1 is greater");
      }
      else if(num1==num3 && num2>num1){
        print("Number $num2 is greater");
      }
      else{
        print("Number $num3 is greater");
      }
  }
  else{
    print("All numbers are equal");
  }
}