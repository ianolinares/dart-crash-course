void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  // i = index
  print("-----");
  // modern way:
  for (final name in names) {
    print(name);
  }

  print("-----");
  for (final name in names) {
    if (name.startsWith('B')) {
      continue; // stop here and go validate expression in for loop, like a skip
    }
    print(name);
  }

  print("-----");
  for (final name in names) {
    if (name == 'Baz') {
      break; // stop here and go out from the for loop
    }
    print(name);
  }

  print("-----");
  for (final name in names) {
    if (name == 'Qux') {
      continue; // if last then it's fine
    }
    print(name);
  }

  print("-----");
  for (final name in names.reversed) {
    //backwards
    print(name);
  }
  print("-----");
  for (var i = 0; i < 10; i++) {
    print(i);
  }
  //dart doesnt support ranges
  // to do it modern for loops
  print("-----");
  for (int value in Iterable.generate(20)) {
    print(value);
  }
}

//new way of for loop/ modern for loop
