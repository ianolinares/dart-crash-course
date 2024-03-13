void main(List<String> args) {
  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

mixin CanRun on Has2Feet {
  void run() {
    print('$runtimeType is running');
  }
}

class Human extends Has2Feet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}


// this will error because mixin is on another class
// class Fish extends HasNoFeet with CanRun {
  // const Fish();
// }
