
main(){
  try {
  // ···
} on Exception catch (e) {
  print('Exception details:\n $e');
} catch (e, s) {
  print('Exception details:\n $e');
  print('Stack trace:\n $s');


}


try{misbehave();}
catch(e){
print(e);
}

try {
  print('breed more flame');
} catch (e) {
  print('Error: $e'); // Handle the exception first.
} finally {
  print('clean up'); // Then clean up.
}
}

void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

