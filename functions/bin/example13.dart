void main(List<String> arg) {
  // describeFully(); // this will error
  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Ian', lastName: 'Olinares');
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('Hello $firstName $lastName');
}

// positional and named parameters
// can be mixed
