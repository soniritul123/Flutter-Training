
class A
{
  void displayA(){
    print("Hello display class A is here");
  }
}

class B extends A
{
  void dispayB(){
    print("Hello display class B is here");
  }
}

class C extends A
{
  void dispayC(){
    print("Hello display class C is here");
  }
}

void main(){
  var b = new B();
  var c = new C();

  b.dispayB();
  b.displayA();

  c.dispayC();
  c.displayA();
}