main(){
var message = StringBuffer('Dart is fun');
for (var i =0; i<5; i++){
  message.write('!');
}
print(message);


var collection = [0, 1, 2];
for (var x in collection) {
  print(x); // 0 1 2
}


// for (int i = 0; i < candidates.length; i++) {
//   var candidate = candidates[i];
//   if (candidate.yearsExperience < 5) {
//     continue;
//   }
//   candidate.interview();
// }

/// Switch Case
var command = 'OPEN';
switch (command) {
  case 'CLOSED':
    print('tutup');
    break;
  case 'PENDING':
    print('pending');
    break;
  case 'APPROVED':
    print('disetujuai');
    break;
  case 'DENIED':
    print('ditolak');
    break;
  case 'OPEN':
    print('buka');
    break;
  default:
    print('default');
}

//continue bisa juga digunakan seperti goto.
var command2 = 'CLOSED';
switch (command2) {
  case 'CLOSED':
    print('tutup');
    continue nowClosed;

  nowClosed:
  case 'NOW_CLOSED':
    print('sedang tutup');
    break;
}
}