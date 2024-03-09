import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'}; // sets cant contain a duplicate
  names.add(
      'Foo'); // knows it's a duplicate wont add it when adding in a sets {}
  print(names);
  print('--------------------');
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  // final uniqueName = {names2}; // it adds as a list not
  final uniqueName = {...names2}; // spread operator, spreads value from list
  print(names2);
  print(uniqueName);
  print('--------------------');

  final foo1 = 'Foo';
  final foo2 = 'Foo';

  // returns int, hash value, basis if
  // this is a duplicate value in the sets
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('--------------------');

  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Did not find Foo');
  }
  print('--------------------');

  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  // cant do comparison between two sets/lists, need to use a class in collections
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------------');

  // comparison between two sets comes with the collection package
  // for list
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('--------------------');

  final ages3 = {40, 30, 20};
  // irregardless of order
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
