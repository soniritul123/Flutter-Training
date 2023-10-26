import 'dart:io';

class A
{
  int? num1;
  void input(){
    print("Enter number 1: ");
    num1 = int.parse(stdin.readLineSync()!);
  }
}

class B extends A
{
  int? square;
  void dispay(){
    square = num1! * num1!;
    
  }
}

class C extends B
{
  void dispay_result(){
    print("Square = $square");
  }
}

void main(){
  var c = new C();
  c.input();
  c.dispay();
  c.dispay_result();
}