/*
multiple condition switch statement

syntax:

switch(expression)
{
  case 1:
    statement;
    break;

  case 2:
    statement;
    break;

  default:
    statement;
}
*/

import 'dart:io';

void main(){
  int? choice;

  String? menu = "press 1 for vadapav \n press 2 for dabeli";
  print(menu);

  print("Enter your choice:");
  choice = int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1:
      print("You got Vadapav");
      break;

    case 2:
      print("You got Dabeli");
      break;

    default:
      print("Invalid Input");
  }
}