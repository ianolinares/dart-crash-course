void main(List<String> arg) {
  // sayHelloTo(); // this will error
  sayHelloTo(name: null);
  sayHelloTo(name: 'Ian');
}

void sayHelloTo({required String? name}) {
  // can't have a value of null if there's curly braces
  // or optional
  // or put a default value
  // can be null but required in this case
  print('Hello, $name!');
}


//named variables