import 'dart:io';
void main(){
  int? num; 
  int i, sum1=0, sum2=0;
  
  for(i=1; i<=5; i++){
    print("Enter a number:");
    num=int.parse(stdin.readLineSync()!);

    if(num % 2 ==0){
      print("Even number");
      sum1+=num;
    }
    else{
      print("Odd number");
      sum2+=num;
    }
    
  }
  print("Even number sum: $sum1");
  print("Odd number sum: $sum2");
}