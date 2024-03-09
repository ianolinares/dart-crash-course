import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('--------------------------');
  testCanonicalizedMap();
  print('--------------------------');
  testCombinedIterableView();
  print('--------------------------');
  testCombinedListView();
  print('--------------------------');
  testCombinedMapView();
  print('--------------------------');
  testMapMerging();
}

//optimizing boolean list
void testBoolList() {
  final boolist = BoolList(
    10,
    growable: true,
  );

  print(boolist);
  boolist[4] = true;
  if (boolist[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolist);
  boolist.length *= 2;
  print(boolist);
}

// decide which value to pick not dependent in hashcodes -  canonicalized maps
void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'bla': 'bla',
    'address': 'new york',
  };

  // final canonMap = CanonicalizedMap.from(
  //   info,
  //   (key) => key.length,
  // );

  final canonMap = CanonicalizedMap.from(
    info,
    (key) => key.split('').first,
  );
  print(canonMap);
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];

  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(5));
  print(combined.contains(10));
}

void testCombinedListView() {
  // CombineListView is a view of a list of lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norweigianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];

  final names = CombinedListView([
    swedishNames,
    norweigianNames,
    frenchNames,
  ]);

  // you can remove in the underlying list but not when already combined
  norweigianNames.remove('Ole');
  print(names);

  if (names.contains('Sven')) print('Sven in the list');

  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  /// cant combine values with same keys
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);

  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);

  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void testMapMerging() {
  final info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };

  final info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };

  // if there's a dupe of keys, it will take the second Map by default
  final merge1 = mergeMaps(info1, info2);
  print(merge1);

  // if you want to choose between to duplicate
  final merge = mergeMaps(info1, info2, value: (one, two) => one);
  print(merge);
}
