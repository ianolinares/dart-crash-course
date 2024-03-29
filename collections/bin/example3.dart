void main(List<String> args) {
  final person1 = Person(
    age: 10,
    name: 'Foo',
  );

  // final person2 = Person(
  //   age: 10,
  //   name: 'Foo',
  // );

  // // they are different
  // print(person1.hashCode);
  // print(person2.hashCode);

  // final persons = {person1, person2};
  // print(persons);

  // print(person1.hashCode);
  // print(person2.hashCode);

  final dog = Dog(
    age: 10,
    name: 'Foo',
  );
  print(person1.hashCode);
  print(dog.hashCode);

  // di ko gets yung part na nagoverride sa bool operator
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(name, age) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(name, age) ||
      other is Dog && name == other.name && age == other.age;
}
