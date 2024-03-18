void main(List<String> args) {
  const JSON<String> json = {
    'name': 'John',
    'address': '123 Main St',
    // 'age': 30, // this will fail because typedef is only for string
  };

  print(json);
}

typedef JSON<T> = Map<String, T>;

// constraint generic type definition