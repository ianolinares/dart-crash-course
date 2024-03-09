void main(List<String> args) {
  // list if no key value pair
  // map if i has key value pair
  final info = {
    'name': 'Foo',
    'age': 10,
  };

  print(info);
  print(info['name']);
  print(info['age']);
  print('--------------');
  print(info.keys);
  print(info.values);
  print('--------------');
  // add value
  info.putIfAbsent('height', () => 100);
  print(info);
  info['height'] = 190;
  print(info);
  print('--------------');
  // entries to iterate values in variable
  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }

  print('--------------');
  // containskey return boolean
  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }
  print('---------------');
  print(info['weight']);

  print('---------------');
  final mapWitIntKeys = {
    10: 20,
    30: 40,
  };
  print(mapWitIntKeys);
  print(mapWitIntKeys[10]);
}
