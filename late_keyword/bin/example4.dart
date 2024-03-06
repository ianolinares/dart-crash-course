void main(List<String> args) {
  final person = Person();
  print(person.fullName);
  print(person.firstName);
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();
  late String firstName = fullName
      .split(' ')
      .first; // if remove late: Error: Can't access 'this' in a field initializer to read 'fullName'.
  late String lastName = fullName.split(' ').last;

  String _getFullName() {
    print("Function '_getFullName()' is called");
    return "Foo bar";
  }
}
