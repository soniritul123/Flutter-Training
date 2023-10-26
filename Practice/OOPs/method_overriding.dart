/*
Method overriding : which is only possible with ineritance

Two classes have same name method its called method overriding
*/

class A{
  void display(){
    print("Parent class is here");
  }
}

class B extends A{
  void display(){
    super.display();
    // super : which is access parent class properties
    // this : which is access current class properties

    print("Child class is here");
  }
}

void main()
{
  var b = new B();
  b.display();
}