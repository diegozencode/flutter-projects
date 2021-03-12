/// Dart class

class Bicycle {
  int? cadence;
  // _ read-only (private attribute) only visible inside the file
  int _speed = 0;
  int? gear;

  int get speed => _speed;

  // constructor
  // shortcut for assigning values to intance variables
  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $speed km/h';
}

void main() {
  // if value don't change use final instead of var
  // the new Bicycle is optional in Dart 2
  var bike = Bicycle(2, 1);
  print(bike);
  bike.speedUp(3);
  print(bike);
}
