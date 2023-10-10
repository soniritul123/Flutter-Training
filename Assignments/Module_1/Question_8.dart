/*
Write a program to calculate sum of 5 subjects & find the 
percentage. Subject marks entered by user.
*/
import 'dart:io';
void main(){
  
  double Maths, Science, English, Gujarati, Hindi;
  double total, percentage;

   print("Enter the marks of Hindi: ");
   Hindi=double.parse(stdin.readLineSync()!);

   print("Enter the marks of Gujarati: ");
   Gujarati=double.parse(stdin.readLineSync()!);

   print("Enter the marks of English: ");
   English=double.parse(stdin.readLineSync()!);

   print("Enter the marks of Maths: ");
   Maths=double.parse(stdin.readLineSync()!);

   print("Enter the marks of Science: ");
   Science=double.parse(stdin.readLineSync()!);

   total=Maths+Science+Hindi+English+Gujarati;
   print("Total marks = $total");

   percentage=(total/500)*100;
   print("Percentage = $percentage");

   
}
