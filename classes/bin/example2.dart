void main(List<String> args) {
  // const person = Person(name: 'John', age: 20);
  // print(person.age);
  // print(person.name);

  // const
  const bar = Person.bar();
  print(bar.name);
  print(bar.age);
  print('-----------');

  const foo = Person.foo(30);
  print(foo.name);
  print(foo.age);
  print('-----------');

  const baz = Person.other();
  print(baz.name);
  print(baz.age);
  print('-----------');

  const john = Person.other(name: 'John');
  print(john.name);
  print(john.age);
  print('-----------');

  const jill = Person.other(name: 'Jill', age: 35);
  print(jill.name);
  print(jill.age);
  print('-----------');

  const sample = Person.sample(null, null);
  print(sample.name);
  print(sample.age);
}

class Person {
  final String name;
  final int age;

  // constructor without keys and default
  const Person(this.name, this.age); // const cause it will not change

  // Below are constructors with name hence named constructors
  // like a function

  // still need to pass parameters but can be null
  const Person.sample(
    String? name,
    int? age,
  )   : name = name ?? 'Ian',
        age = age ?? 29;

  //named constructor
  const Person.bar()
      : name = 'Bar',
        age = 20;
  // can't pass parameters

  const Person.foo(this.age) : name = 'Foo';
  // this can accept parameters

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 40;
  // can pass parameters or will return default
}

// class is like a blueprint of logics
