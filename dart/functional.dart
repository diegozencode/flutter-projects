// pass functions as arguments
// asign a function to a variable
// lambda expession (nameless function that can be used as a constant value)

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  values.map(scream).forEach(print);
  values.skip(1).take(3).map(scream).forEach(print);
}
