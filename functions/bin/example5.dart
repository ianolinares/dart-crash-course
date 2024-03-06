void main(List<String> arg) {
  sayHelloTo();
  sayHelloTo(name: null);
  sayHelloTo(name: 'Ian');
}

void sayHelloTo({String? name}) {
  // can't have a value of null if there's curly braces
  // or optional
  // or put a default value
  print('Hello, $name!');
}


//named variables