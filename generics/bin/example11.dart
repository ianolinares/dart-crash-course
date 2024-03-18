void main(List<String> args) {
  const integers = [100, 5, 2];
  const doubles = [33.0, 3, 2.0];
  print(integers.reduce(divide));
  print(doubles.reduce(divide));
}

// function that returns a generic and accepts double/int for both parameters
T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T; // type cast as the generic type
  } else {
    return lhs / rhs as T;
  }
}
