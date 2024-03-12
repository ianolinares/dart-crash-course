void main(List<String> args) {
  const person = Person(name: 'John', age: 20);

  print(person.age);
  print(person.name);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  }); // cause it will not change
}


// blueprint of logics