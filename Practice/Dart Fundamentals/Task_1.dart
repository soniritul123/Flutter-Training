/*
Accept 3 teams score and find out which team win using of nested if statement.
*/

import 'dart:io';
void main()
{
int? team1, team2, team3;

print("Enter team 1 score: ");
team1 = int.parse(stdin.readLineSync()!);

print("Enter team 2 score: ");
team2 = int.parse(stdin.readLineSync()!);

print("Enter team 3 score: ");
team3 = int.parse(stdin.readLineSync()!);

if (team1 != team2 && team1 != team3 && team2 != team3){

  if (team1 > team2 && team1 > team3)
  {
    print("Team 1 is win");
  }
  else if (team2 > team1 && team2 > team3)
  {
    print("Team 2 is win");
  }
  else{
    print("Team 3 is win");
  }
}
else{
  print("All team's scores are equal");
}

}