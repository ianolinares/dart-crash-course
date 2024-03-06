void main(List<String> args) {
  final person = Person();
  // print(person.description); // this will error because you cannot read them without initializing

  person.description = 'Description 1';
  print(person.description); // you cannot read them without initializing
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Description 1';
  print(woof
      .description); // can be assigned once because there's a final in class;
  try {
    woof.description =
        'Description 2'; // cant be assigned again because already been initialized and it's a final
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}

// allow multiple values;
// blend in final with late
