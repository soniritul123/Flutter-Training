/*
there are 2 types of jumping statement

1) break
2)continue

=> break: it will break the loop

=> continue: it will skip current statement

*/

import 'dart:io';

void main(){
  int i;
  int? marks;

  for(i=1; i<=5; i++){
    print("Enter your marks:");
    marks = int.parse(stdin.readLineSync()!);

    if(marks>35){
      print("Pass");
    
    }else{
      break;
    }
  }
}