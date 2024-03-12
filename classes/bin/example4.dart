void main(List<String> args) {
  final person = Person(firstName: 'Ian', lastName: 'Olinares');
  print(person.firstName);
  print(person.lastName);
  print(person.fullName);
  print(person.fullName2);
  print(person.fullName2);
}

// use this for simple calculation
// this getter is being called everytime it's being used
class Person {
  final String firstName;
  final String lastName;
  String get fullName2 {
    print('this is getting called');
    return '$firstName $lastName';
  }

  Person({required this.firstName, required this.lastName});
  String get fullName => '$firstName $lastName';
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   // initialize
//   // full name was calculated upon contructing an instance of a person
//   // fullname could not be change
//   // use this if your property using heavy calculations, put in the constructor. there's logic type
//   Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }

 



// getters