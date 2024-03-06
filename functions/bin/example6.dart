void main(List<String> arg) {
  describe();
  describe(something: null);
  describe(something: 'Hello, Dart!');
}

void describe({
  String? something = 'Hello, world!',
}) {
  print(something);
}
