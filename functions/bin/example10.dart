void main(List<String> arg) {
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');
  describePerson(name: 'Foo', age: 20);
  describePerson(age: 20, name: 'Foo');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, youre $age years old.');
}

// named variables can be called in different order