import 'dart:io';
void main(){
  bool status=true;
  int? num1,num2;
  int ans;
  int choice;
  String? choice1;
  String? menu = "1) Addition \n 2) Multiplication \n 3) Division \n 4) Substraction";
  print(menu);
  

  while(status){
    print("Enter your choice:");
    choice=int.parse(stdin.readLineSync()!);
    switch(choice){

      case 1:
      print("Enter First number: ");
      num1=int.parse(stdin.readLineSync()!);
      print("Enter Second number: ");
      num2=int.parse(stdin.readLineSync()!);
      ans = addition(num1,num2);
      print("Addition = $ans");
      break;

      case 2:
      print("Enter First number: ");
      num1=int.parse(stdin.readLineSync()!);
      print("Enter Second number: ");
      num2=int.parse(stdin.readLineSync()!);
      ans = multiplication(num1,num2);
      print("multiplication = $ans");
      break;

      case 3:
      print("Enter First number: ");
      num1=int.parse(stdin.readLineSync()!);
      print("Enter Second number: ");
      num2=int.parse(stdin.readLineSync()!);
      ans = division(num1,num2);
      print("Division = $ans");
      break;

      case 4:
      print("Enter First number: ");
      num1=int.parse(stdin.readLineSync()!);
      print("Enter Second number: ");
      num2=int.parse(stdin.readLineSync()!);
      ans = substraction(num1,num2);
      print("Substraction = $ans");
      break;

    }

    print("Do you want to perform more operation press y for yes and press n for no: ");
    choice1=stdin.readLineSync()!;

    if(choice1=='Y' || choice1=='y'){
      status=true;
    }
    else{
      status=false;
      
    }
  }
}

int addition(num1,num2)
{
  
  return num1 + num2;
}

int multiplication(num1,num2)
{
  return num1 * num2;
}

int division(num1,num2)
{
  return num1 ~/ num2;
}

int substraction(num1,num2)
{
  return num1 - num2;
}