void main(List<String> args) {
  final person = Person();
  person.walk(speed: 10.0);
  person.jump(speed: 5.0);
}

// abstract can be invoke without instantiating
// abstract filed cannot have initializers

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
  }
}

// parent mixins must be
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
