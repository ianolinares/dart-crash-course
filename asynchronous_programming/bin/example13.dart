void main(List<String> args) async {
  final result = await getNames()
      .asyncMap(
    (name) => extractCharcters(name),
  )
      .fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jill';
}
// ['J','o','h','n']
// ['J','a','n','e']
// ['J','i','l','l']

Future<List<String>> extractCharcters(String from) async {
  final characters = <String>[];
  for (final character in from.split('')) {
    await Future.delayed(Duration(milliseconds: 100));
    characters.add(character);
  }

  return characters;
}
