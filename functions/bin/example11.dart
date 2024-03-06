void main(List<String> arg) {
  // these are all invalid
  // sayGoodbyeTo();
  // sayGoodbyeTo('Foo');
  sayGoodbyeTo('Foo', 'Bar');
  sayGoodbyeTo('Baz', 'Bar');
}

void sayGoodbyeTo(
  String person,
  String andOtherPerson,
) {
  print('Goodbye. $person and $andOtherPerson.');
}

// positional arguments that has no names, associate them all, can't have default variables
// no {} curly braces