import 'dart:io';
void main(){
  int i;
  int? num;
  int ecount=0, ocount=0;

  i=1;
  while(i<=5){
    print("Enter the number:");
    num=int.parse(stdin.readLineSync()!);
    //print("Number = $num");
    i++;

    if(num%2==0){
      ecount++;
    }
    else{
      ocount++;
    }
  }

  print("Count of Even no: $ecount");
  print("Count of odd no: $ocount");

}