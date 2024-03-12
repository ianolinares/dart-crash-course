void main(List<String> args) {
  final car = Car();
  // car.speed = 30; // you can assign value
  car.drive(speed: 30);
  print('Speed is ${car.speed}');
  car.drive(speed: 40);
  car.stop();
}

class Car {
  int speed = 0;
  //  need constructor if no value or hasnt initialized for any property in a class
  final String carName = '';

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping....');
    print('Stopped');
  }
}
// methods

// simply function in a class