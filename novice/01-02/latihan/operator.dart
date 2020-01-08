main(){
  assert(2+3 ==5);
  assert(2-3 ==1);
  assert(2*3 ==6);
  assert(5/2 ==2.5);
  assert(5~/3 ==2);
  assert(5%2 ==1);

  assert ('5/2 = ${5~/2} r ${5%2}'=='5/2 = 2 r 1'); 

var a, b;

a = 0;
b = ++a; // ditambah dulu baru diberikan nilainya ke b
assert(a == b); // 1 == 1

a = 0;
b = a++; // diberikan dulu nilainya ke b kemudian a baru ditambah 1
assert(a != b); // 1 != 0

a = 0;
b = --a; // dikurangi dulu baru diberikan nilainya
assert(a == b); // -1 == -1

a = 0;
b = a--; //diberikan dulu nilainya ke b kemudian a baru dikuragi 1
assert(a != b); // -1 != 0


var value =1;
// memberi nilai value ke a
a = value;
// memberi nilai value bila b bernilai null, bila tidak null maka nilai b tetap.
b ??= value;



//conditional expression
var isPublic = true;
var visibility = isPublic ? 'public' : 'private'; // ternary

}