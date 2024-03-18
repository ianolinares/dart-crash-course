void main(List<String> args) {
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 141);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  print('-------------------------------------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);
  @override
  String toString() => 'InvalidAgeException $age, $message}';
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greated than 140');
    }
  }
}
