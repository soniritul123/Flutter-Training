import 'dart:io';
void main(){

  int i;
  int? num;
  i=1;

  while(i<=5){
    print("Enter the number:");
    num=int.parse(stdin.readLineSync()!);
    print("num=$num");
    i++;

    if(num%2==0){
      print("Even Number");
    }
    else{
      print("Odd Number");
    }
  }
}