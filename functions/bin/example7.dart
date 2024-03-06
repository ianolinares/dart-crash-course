void main(List<String> arg) {
  doSomethingWith();
  // doSomethingWith(name: null);// invalid because not optional null value
  doSomethingWith(name: 'Foo');
}

void doSomethingWith({
  String name = 'Bar',
}) {
  print('Hello, $name');
}


//named parameters with default value