/*

conditional operator:
  ? :

  which is contain 3 expression

Syntax:

  exp1 ? exp2 : exp3;
  
*/

import 'dart:io';
void main(){
  int? num1, num2;
  int? max;
  print("Enter number 1 : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2 :");
  num2 = int.parse(stdin.readLineSync()!);

  max = num1 > num2 ? num1 : num2;

  print("Maximum = $max");
}