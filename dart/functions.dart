// function example
/// this is a documentation comment, used to document
/// libraries, classes and members
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// shorthand => arrow for functions that contain a single statement
main() {
  flybyObjects.where((name) => name.contains('p')).forEach(print);

  var result = fibonacci(6);
  print('Fibonacci (6): $result');
}
