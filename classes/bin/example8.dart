void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}

// you still need a constructor.

// They are the only constructor that allow you to create an instance of the subclass of the current class! That's their importance.


// tl;dr Use a factory in situations where you don't necessarily want to return a new instance of the class itself. Use cases:

// the constructor is expensive, so you want to return an existing instance - if possible - instead of creating a new one;
// you only ever want to create one instance of a class (the singleton pattern);
// you want to return a subclass instance instead of the class itself.

//https://stackoverflow.com/questions/53886304/understanding-factory-constructor-code-example-dart