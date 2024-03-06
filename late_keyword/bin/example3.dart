void main(List<String> args) {
  final person = Person();
  print(person.age); // will be triggered in first use
  print(person.description); // will be triggered in first use

  print(person.age);
  print(person.description);
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print("Function 'heavyCalculationOfDescription' is called");
    return "Foo bar";
  }
}
