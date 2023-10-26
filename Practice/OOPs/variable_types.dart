/*
there are three types of variable

1) local variable
2) class variable (static)
3) instant variable (non-static)

1) local variable : A variable which is declare inside the method, block or constructor

  we can't access it outside the block

2) class variable : static variable which is dependent on class name 

  static means it allocates memory once in a program

3) instant variable : instance variable which is call when we create instance (object) of class.
*/

class Student{
  static int? count = 0; // class variable or static variable
  int? count_non = 0; // instance variable
  void display(){
    int num = 10; // local variable
    print("num = $num");
  }
  void counter(){
    count = count! + 1;
    count_non = count_non! + 1;
    print("Count = $count");
    print("\t count = $count_non");

  }
}

void main()
{
  var obj = Student(); // object creation
  obj.display();
  obj.counter();

  var obj1 = Student();
  obj1.counter();
  }