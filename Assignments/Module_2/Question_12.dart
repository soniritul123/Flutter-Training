/*
Write a Program to check the given number is prime or not prime.
*/

import 'dart:io';

void main() {
  int n;
  print('Enter a Number');
  n = int.parse(stdin.readLineSync()!);
  if (isPrime(n)) {
    print('$n is a prime number.');
  } else {
    print('$n is not a prime number.');
  }
}

bool isPrime(n) {
  for (var i = 2; i <= n / i; ++i) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
