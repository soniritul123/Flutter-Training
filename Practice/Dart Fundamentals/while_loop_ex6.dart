import 'dart:io';
void main(){

  int i;
  int? num;
  int pnum=0, nnum=0;

  i=1;
  while(i<=5){
    print("Enter the number:");
    num=int.parse(stdin.readLineSync()!);
  
      if(num>0){
        pnum++;
      }
      else{
        nnum++;
      }
    i++;
  }
  print("Positive number count: $pnum");
  print("Negative number count: $nnum");
}