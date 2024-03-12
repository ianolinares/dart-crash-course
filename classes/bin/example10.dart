void main(List<String> arg) {
  const car = Car();
  car.accelerate();
  const motorcycle = Motorcycle();
  motorcycle.accelerate();
}

enum VehicleType { car, motorcycle, bicycle }

abstract class Vehicle {
  final VehicleType kind;

  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is accelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleType.car);
}

// it's like copying it's property and methods, creates your own logic of the blueprint or class.
class Motorcycle implements Vehicle {
  // you still need a constructor even if there's no other property
  const Motorcycle();
  @override
  void accelerate() {
    print('Motorcycle is accelerating');
  }

  @override
  void decelerate() {
    print('Motorcycle is accelerating');
  }

  @override
  VehicleType get kind => VehicleType.motorcycle;
}
// abstract classes are like the blueprint of blueprint