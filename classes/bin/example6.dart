void main(List<String> args) {
  final car = Car();
  try {
    //    car.speed = -1;
    car.drive(speed: 10);
    car.drive(speed: -2);
  } catch (e) {
    print(e);
  }
}

class Car {
  // setter
  int _speed = 0;
  int get speed => _speed;

  // applying some logic in one of the property
  // when setting a value it will evaluate this function like
  // this doesnt need a constructor because it has default value
  set speed(int newSpeed) {
    // print('Setting value');
    if (newSpeed < 0) {
      throw Exception('Speed cannot be negative');
    } else {
      _speed = newSpeed;
    }
  }

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    // this goes to setter
    speed = 0;
    print('Stopping....');
    print('Stopped');
  }
}

//setter
