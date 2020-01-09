import 'dart:math';

main(){
  var rect = Rectangle(3,4,20,15);
  rect.right =12;
  rect.setLeft = 10;
  print(rect.left);
  assert(rect.left== -8);

  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  //overide operator
  final v = Vector(2,3);
  final w = Vector(2,2);

  assert(v+w == Vector(4, 5));
  assert(v-w == Vector(0, 1));

  //enum

  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  var aColor = Color.blue;

  switch(aColor){
    case Color.red:
      print("rose are red!");
      break;
    case  Color.green:
      print("Green as grass");
      break;
    default :
      print(aColor);
      break;
  }

  //static method

  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);

}

class Point{
  num x,y;

  Point(this.x, this.y);

  num distanceTo(Point other){
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx+dy*dy);

  }


  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle{

  num _left,top ,width, height;
  Rectangle(this._left, this.top,this.width,this.height);

  num get right => _left + width;
  get left => _left;
  set setLeft(num value) => _left = value;
  set right(num value) => _left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;

}

// abstract class and abstract methods
abstract class Doer{
  void doSomething(); // abstract method
}

class EffectiveDoer extends Doer{
  @override
  void doSomething() {
    // TODO: implement doSomething
  }

}

// implicit interfaces
class Person {
  final _name;

  Person (this._name);

  String greet(String who) => 'Hello, $who. I am $_name.';
}

class Impostor implements Person{
  // TODO: implement _name
  get _name => null;

  String greet(String who) => 'Hi $who. Do You know who I am?';

}

String greetBob(Person person) => person.greet('bob');


//extanding class

  class Television {
    void turnOn(){
//      _illuminateDisplay();
//      _activateIrSensor();
    }
  }

  class SmartTelevision extends Television{
    @override
    void turnOn() {
    // TODO: implement turnOn
    super.turnOn();
  }

  }

// override operator

  class Vector{
    final int x,y;

  Vector(this.x, this.y);

  Vector operator +(Vector v )=> Vector(x+ v.x, y+v.y);
  Vector operator -(Vector v )=> Vector(x- v.x, y-v.y);
  }

  //noSuchMethod()

  class A{
    @override
    void noSuchMethod(Invocation invocation){
      print('You tried to use a non-existent member: ' +
          '${invocation.memberName}');
    }
  }

  enum Color{red, green ,blue}

  //mixins

//class Musician extends Performer with Musical{
//
//}
//class Maestro extends Person with Musical, Aggressive, Demented{
//    Maestro(String maestroName){
//      name =maestroName;
//      canConduct =true;
//    }
//}
//
//mixin Musical{
//    bool canPlayPiano = false;
//    bool canCompose = false;
//    bool canConduct = false;
//
//    void entertainMe(){
//      if(canPlayPiano){
//        print("Playing Piano");
//      }
//      else if(canConduct){
//        print("Waving hands");
//      }
//      else {
//        print('Humming to self');
//      }
//    }
//}

//generics
var names = List<String>();











