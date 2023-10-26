/*
this keyword: this which is refer current class properties
 
    using of this keyword we can access current class properties inside the class
*/

class Person{
  //data mamber
  String? name;
  int? score;

  Person(String? name, int? score) // constructor
  {
   this.name=name;
   this.score=score;
  }

  void display(){
    print("Name = $name");
    print("Score = $score");
  }
}

void main(){
  // object creation
  var obj=Person("Ritul", 444);
  obj.display();
}