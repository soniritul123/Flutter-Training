/*
Write a program you have to make a summation of first
 and last Digit. (E.g. 1234 ans:-5) 
*/
import 'dart:io';

void main() {
  int num;
  print("Enter a num:");
  num = int.parse(stdin.readLineSync()!);
  int sum = sumOfFirstAndLastDigit(num);
  print('num: $num');
  print('Sum of first and last digits: $sum');
}

int sumOfFirstAndLastDigit(int num) {
  bool isNegative = false;
  if (num < 0) {
    isNegative = true;
    num = -num;
  }
  int firstDigit = num;
  while (firstDigit >= 10) {
    firstDigit ~/= 10;
  }
  int lastDigit = num % 10;
  int sum = firstDigit + lastDigit;
  return isNegative ? -sum : sum;
}