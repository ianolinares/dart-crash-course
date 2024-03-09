void main(List<String> args) {
  AnimalType.dog.jump();
  AnimalType.cat.jump();
  try {
    AnimalType.fish.jump();
  } catch (e) {
    print('Fish Cannot jump');
    // print(e);
  }
}

mixin CanJump {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      throw Exception('Cannot jump');
    } else {
      print('Jumped!');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;

  const AnimalType({required this.feetCount});
}




// Mixins are a way to reuse code in multiple class hierarchies without using 
// traditional inheritance. 
// A mixin is a class that provides a set of methods and properties that can 
// be added to other classes. It allows you to compose functionality into a 
// class hierarchy without creating a deep inheritance chain