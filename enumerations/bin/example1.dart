void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  } else {
    print('Woof is not a cat');
  }

  woof.type == AnimalType.cat
      ? print('Woof is a cat')
      : print('Woof is not a cat');

  switch (woof.type) {
    case AnimalType.rabit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      break;
  }
}

// must be PascalCase
enum AnimalType {
  rabit,
  dog,
  cat,
}

class Animal {
  final String name;
  final AnimalType type;

  Animal({required this.name, required this.type});
}
