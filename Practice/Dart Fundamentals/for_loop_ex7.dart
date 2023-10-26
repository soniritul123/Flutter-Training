import 'dart:io';
void main(){
  int? num; 
  int i, count1=0, count2=0;
  
  for(i=1; i<=5; i++){
    print("Enter a number:");
    num=int.parse(stdin.readLineSync()!);

    if(num % 2 ==0){
      print("Even number");
      count1++;
    }
    else{
      print("Odd number");
      count2++;
    }
    
  }
  print("Count of even number: $count1");
  print("Count of Odd number: $count2");
}