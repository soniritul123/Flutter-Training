import 'dart:io';

void main()
{
  int ans;

  ans = myfun(); // call
  print("Multiplication : $ans");
}

int myfun()
{
  int num;

  print("Enter the number: ");
  num=int.parse(stdin.readLineSync()!);

  return num * num;
}