// Control FLow Statements
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var year = 2021;

main() {
  for (var planet in flybyObjects) {
    print(planet);
  }

  if (year >= 2001) {
    print('21st century');
  } else {
    print('20th century');
  }
}
