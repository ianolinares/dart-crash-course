void main(List<String> args) {
  final mom1 = Mom();
  print(mom1.role); // calling the property

  final dad = Dad();
  print(dad.role);

  // final person = Person(role: Role.dad);
  // print(person.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({required this.role});
}

class Mom extends Person {
  // this is constructor
  // need constructo when having a property with no value
  // initialize and assign the role property to Role.mom,
  // so when called or intantiated it will not require to add parameter
  const Mom() : super(role: Role.mom);

  // remember super.anyPropertyHere ,it gets the inherited property but this one will still need to pass a value
  // const Mom({required super.role});
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
