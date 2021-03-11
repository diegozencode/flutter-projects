var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['Saturn'],
  'url': 'path/to/image.png'
};

void main() {
  print('The $name in $year with an antenna diameter of $antennaDiameter');
  print(image['url']);
}
