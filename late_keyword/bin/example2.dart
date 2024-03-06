void main(List<String> args) {
  print('Before');
  late String name = provideName(); // not gonna process/called it until use
  print('After');
  print(name); // will print here
  print(name); // will not process the second time.
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
