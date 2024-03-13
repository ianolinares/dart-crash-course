void main(List<String> args) {
  final person = Person(firstName: 'Ian', lastName: 'Olinares');
  print(person.fullName);
  print(getFullName(person));
}

// mixin as a datatype in a function call
String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  final String firstName;
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
