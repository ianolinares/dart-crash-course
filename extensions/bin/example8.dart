void main(List<String> args) {
  const jack = Person(name: 'Jack', age: 20);
  print(ShortDescription(jack).description);
  print(LongDescription(jack).description);
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}

// short
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

// long
extension LongDescription on Person {
  String get description => '$name is $age years old';
}


// why extension name is needed
// why do we need it?

// extension override