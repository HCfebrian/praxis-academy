import 'dart:math';
main(){

///// penggunaan new menjadi optional di dart 2
//  var p1 = Point(2,2);
//  p1.x=3;
//  var p2 = Point.fromJson({'x':1,'y:2'})
//
//  var p3 = new Point(2, 2);
//  var p4 = new Point.fromJson({'x':1,'y':2});
//
//// beberapa class menyediakan constant constructor
//  var p = const ImmutablePoint(2,2);
//
//// mempersingkat inisialisasi constant
//    const pointAndLine = const{
//      'point' : const [const ImmutablePoint(0,0)],
//      'line' : const [const ImmutablePoint(1,0), const ImmutablePoint(-2,11)];
//    }
//
//    const pointAndLine = {
//    'point': [ImmutablePoint(0, 0)],
//    'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)]
//  };

// mempersingkat constant hanya dapat dilakukan dalam satu konteks

//  var a = const ImmutablePoint(1, 1); // Creates a constant
//  var b = ImmutablePoint(1, 1); // Does NOT create a constant

//  assert(!identical(a, b)); // NOT the same instance!

// apabila tidak ada constructor tak bernama dan tanpa argument di super class
 var emp = new Employee.fromJson({});

  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  (emp as Person).firstName = 'Bob';
  


 var p0 = new Point(2, 3);
  print(p0.distanceFromOrigin);
  // Initializer list sets instance variables before
// the constructor body runs.
//  Point.fromJson(Map<String, num> json)
//    : x = json['x'],
//      y = json['y'] {
//  print('In Point.fromJson(): ($x, $y)');
//}

}

class Point{
  num x;
  num y;
  num distanceFromOrigin;

  Point(x,y)
    :x = x,
     y = y,
     distanceFromOrigin = sqrt(x*x+y*y);

  Point.origin(){
    x=0;
    y=0;
  }

  Point.alongXAxis(num x) : this(x, 0);
  
}


class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache =
  <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}


 