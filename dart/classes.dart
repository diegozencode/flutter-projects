/// spacecraft
class Spacecraft {
  String name;
  // question mark at the end of the type means nullable
  DateTime? launchDate;

  // constructor
  Spacecraft(this.name, this.launchDate) {
    // initialice code here
  }

  // Named constructor that forwards to the default one
  Spacecraft.unlaunched(String name) : this(name, null);

  // read-only non-final property
  int? get launchYear => launchDate?.year;

  // Method
  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  var voyager3 = Spacecraft.unlaunched('Voyager III');

  voyager.describe();
  voyager3.describe();
}