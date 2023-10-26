import 'dart:ffi';
import 'dart:io';
void main(){
  int? num; // numeric value (variable declare)
  Float? n; // decimal value pointed value
  bool? status; // true/false
  Double? a; // decimal value
  String? name; // multiple characters

  print("Enter your number: ");
  num = int.parse(stdin.readLineSync()!);

  print("Number = $num");

}