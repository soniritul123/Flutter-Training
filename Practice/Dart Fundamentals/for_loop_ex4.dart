import 'dart:io';
void main(){
  String? name; 
  int i;
  
  for(i=1; i<=5; i++){
    print("Enter a name:");
    name=stdin.readLineSync();
  }
}