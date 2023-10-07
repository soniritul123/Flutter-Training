import 'dart:io';
void main(){
  int? num; 
  int i;
  
  for(i=1; i<=5; i++){
    print("Enter a number:");
    num=int.parse(stdin.readLineSync()!);
  }
}