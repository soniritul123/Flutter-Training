/*
function: function is a block of code that code are used to again and again

syntax:

<returntype> funname()
{
  // block
}

there are 4 categories of function

1) function without parameter and function without return type
2) function without parameter and function with return type
3) function with parameter and function without return type
4) function with parameter and function with return type

*/

void main(){
  int i;
  for(i=1; i<=5; i++){
    print(i);
    greetings(); // function calling
  }
}

void greetings() // function defination
{
  print("Hello");
}
