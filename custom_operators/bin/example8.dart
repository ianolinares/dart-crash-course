void main(List<String> args) {
  final meThisYear = Person(age: 30);
  print('Me this year is = $meThisYear');
  final meNextYear = meThisYear + 1;
  print(meNextYear);
}

class Person {
  final int age;

  Person({required this.age});

  Person operator +(int num) {
    return Person(age: age + 1);
  }

  @override
  String toString() => 'Person (age = $age)';
}

// this could also work
// extension on Person {
//   Person operator +(int num) {
//     final thisShadow = this;
//     return Person(age: thisShadow.age + 1);
//   }
// }
