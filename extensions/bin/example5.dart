void main(List<String> args) {
  const json = {
    'name': 'Foo Bar',
    'age': 20,
  };

  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );

  print(ageAsString);

  final String? helloName = json.find<String>(
    'name',
    (String name) => 'Hello, $name!',
  );

  // remove force unwrap
  final String? address = json.find(
    'address',
    (String address) => 'You live at $address',
  );

  print(address);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
