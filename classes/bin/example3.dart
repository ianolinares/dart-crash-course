void main(List<String> args) {
  const v = Vehicle(4);
  print(v);
  // print(v.toString());

  const car = Car();
  print(car);

  const bicycle = Bicycle();
  print(bicycle);
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return 'Vehicle with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }

    return '$runtimeType with $wheelCount wheels';
  }
}

// sub-classes of Vehicle

class Car extends Vehicle {
  // const Car(super.wheelCount); // nonsense because
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}

// all classes are being inherited from Object class
// Dart is automatically does that for you without extending it.
// base class for all Dart objects // super clases

// sub-classing is like inheriting logic from one class to another
// like father and son, you've inherited things that your good at from your father/mother.

// overriding is like trying to re-implement
// there's an existing one in the class you've inheritted
// overwrite = overrule
