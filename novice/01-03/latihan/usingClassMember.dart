
import 'dart:math';
main(){

var p = Point(1,0);

// p.y =3;  //gunakan  titik (.) untuk mengakses variable atau method dalam variable instance.
// p?.y =4;  //gunakan  tanda tanya dan titik (?.) untuk mengisi variable bila variablel p non-null.
num distance = p.distanceTo(Point(2,0));

print(distance);

}