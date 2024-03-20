void main(List<String> args) async {
  // await for (final number in getNumbers()) {
  //   print(number);
  // }

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

/// | (1 sec delay) 0 (1 sec delay) 1 (1 sec delay) 2 (1 sec delay) 3 (1 sec delay) to 9
Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  // yield 'Doe';
}

/// future => ------- 1 SEC ---------- x |
/// stream => ------- 1 SEC --- X ---- 1 SEC --- X --- 1 SEC ----- XXX |