void main(List<String> arg) {
  final foo = doSomthing(10, 20);
  print(foo);
  print(foo()); //calling it
}

int Function() doSomthing(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs; 

// a function can return a function
// usually not okay
// no case in dart but it exists


