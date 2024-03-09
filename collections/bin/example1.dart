void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (final name in names) {
    print(name);
  }
  print('-------------------');

  for (final name in names.reversed) {
    print(name);
  }
  print('-------------------');

  // case sensitive for contains
  if (names.contains('Bar')) {
    print('Bar is in the list');
  }
  print('-------------------');

  // where function
  for (final name in names.where((name) => name.startsWith('B'))) {
    print(name);
  }
  print('-------------------');

  // indexes
  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  try {
    print(names[4]);
  } catch (e) {
    print(e);
  }
  // sublist
  // (start from, end at but optional)
  // (include this index, exclude this)

  print('-------------------');
  names.sublist(1).forEach(print);
  print('-------------------');
  names.sublist(1, 3).forEach(print);
  print('-------------------');
  names.sublist(2, 3).forEach(print);
  print('-------------------');

  // can be mutated, add/delete values into it not assign new values
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('-------------------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Quz'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Quz'];
  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }
  print('-------------------');
  ['Foo', 'Bar', 'Baz']
      .map(
        (str) => str.toUpperCase(),
      )
      .forEach(print);

  print('-------------------');
  names.map((str) => str.length).forEach(print);
  print('-------------------');

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      int previousValue,
      thisValue, //this will be from the number list
    ) =>
        previousValue + thisValue, // this will be return to previousValue
  );
  print(sum);

  print('-------------------');
  final totalLength = names.fold(
    0, // start with int value of 0
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);
  print('-------------------');
  final result = names.fold(
    '', // start with an empty string
    (
      result,
      str,
    ) =>
        '$result${str.toUpperCase()} ',
  );

  print(result);
}
