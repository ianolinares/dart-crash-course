void main(List<String> args) async {
  await for (final character in getNames().asyncExpand(
    (name) => getCharacters(name),
  )) {
    print(character);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(milliseconds: 300));
    yield fromString[i];
  }
}

// to use yield must put async and asterisk

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'John';
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'Doe';
}
// async expand