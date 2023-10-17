import 'dart:io';

void main(){

  int i;
  int? num;

  for(i=1; i<=5; i++){
    print("Enter the number:");
    num=int.parse(stdin.readLineSync()!);

    if(num>0){
      print("Positive");

    } else{
      break;
    }
  }
}