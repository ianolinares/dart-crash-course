void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(
    members: [johnDoe, johnDoe],
  );
  print(doeFamily);
  print(doeFamily.membersCount);

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final smithFamily = RightImplementationOfFamily(
    members: [johnSmith, johnSmith],
  );
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;
  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount; // here's the difference

  WrongImplementationOfFamily({required this.members}) {
    membersCount =
        getMembersCount(); //it's being initialized within the constructor
  }

  int getMembersCount() {
    print('Getting member count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members; //here's the difference
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting member count');
    return members.length;
  }
}

// late variables should not be initialized in the constructor
// should not be mental gymnastic 
// you should just use optionals
// should not be hard to use