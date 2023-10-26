import 'dart:io';

void main(){
  bool status=true;
  int? num;
  String? choice;

  while(status){
    print("Enter the number:");
    num=int.parse(stdin.readLineSync()!);

    print("Do you want to accept more numbers press y for yes and press n for no: ");
    choice=stdin.readLineSync()!;

    if(choice=='Y' || choice=='y'){
      status=true;
    }
    else{
      status=false;
      
    }
  }
}