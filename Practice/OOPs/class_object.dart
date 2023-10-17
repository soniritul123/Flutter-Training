/*
class : class is a userdefined data type

class is a collection of data member and member function

class is a blueprint of object

class is a similar like whatsapp group


syntax:
class <classname>
{
  // data member
  // member function
}

data member is like variables of class
member function means method of class

object: object is an instance or variable of class

using of object we can access properties of class

syntax: 

var objectname = new classname();

Method: whch is declare inside the class and depend on object
function: which is declare outside the class and independent

*/

class Student{
  int? score = 100; //data member

  void display(){  // member function or method
    print("Student score is $score");

  }
}

void main(){
  // object creation
  var obj = new Student();
  obj.display();

}
