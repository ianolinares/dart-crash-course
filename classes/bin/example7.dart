void main(List<String> args) {
  // final foo = Person();
  // foo.name = 'foo';
  // final bar = Person();
  // bar.name = 'Bar';
  // print(foo.name);
  // print(bar.name);

  // Person().name = 'Foo';
  // print(Person().name);

  print(Car.carsInstantiated);
  Car(name: 'My car');
  print(Car.carsInstantiated);
  Car(name: 'YOur car');
  print(Car.carsInstantiated);
}

// class Person {
// String name = '';
// static String name = ''; // static variable

// }

class Car {
  static int _carInstantiated = 0;
  static int get carsInstantiated => _carInstantiated;
  static void incrementCarsInstantiated() => _carInstantiated++;
  final String name;

  Car({
    required this.name,
  }) {
    incrementCarsInstantiated();
  }
}


// static variables and methods are part of the class instead of a specific instance. 
// it can be accessed without creating an object.


// Syntax: static [date_type] [variable_name];

// Accessing Static Variable
// Syntax: Classname.staticVariable;