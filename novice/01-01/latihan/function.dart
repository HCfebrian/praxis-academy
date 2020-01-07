// Komentar satu baris

/// komentar satu paragraf,
/// setiap new line otomatis memiliki notasi komentar
/// cocok untuk dokumentarsi

/* bisa juga komentar seperti ini */

void main() {
  var flybyObject = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

 
  var result = fibonacci(20);
  print(result);

  flybyObject.where((name) => name.contains('u')).forEach(print);
}

 int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

