import 'dart:mirrors';

void main(List<String> args) {
  final person = Person(
    name: 'John',
    age: 30,
  );
  print(person);
  final house = House(
    Address: '123 Main St',
    rooms: 6,
  );
  print(house);
}

class Person with HasDescription {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}

class House with HasDescription {
  final String Address;
  final int rooms;

  const House({required this.Address, required this.rooms});
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(
      reflection.type.simpleName,
    );

    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.askKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee,
    }.toString();
    return '$thisType = $properties';
  }
}

extension Askey on VariableMirror {
  String get askKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}


//reflections