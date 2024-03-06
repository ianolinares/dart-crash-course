void main(List<String> arg) {
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Foo');
  makeUpperCase('Foo', 'Bar');
  // makeUpperCase('foo',null); // this will error second variable not optional null variable
}

void makeUpperCase([
  String? name,
  String lastName = 'Bar',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}

// optional positional arguments
// no curly braces {}
// with [] 