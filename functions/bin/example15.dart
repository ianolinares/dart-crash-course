void main(List<String> arg) {
  print(minus());
  print(minus(30, 20));
  print(minus(20, 30));

  print(perfomOperation(10, 20, (a, b) => a + b));
  print(perfomOperation(10, 20, (a, b) => a - b));
  print(perfomOperation(10, 20, add)); // pasing a defined function
  print(perfomOperation(10, 20, minus)); //passing a define function
}

int perfomOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);

// int minus([int lhs = 10, int rhs = 5]) {
//   return lhs - rhs;
// }

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;


// arrow function
// want to ommit the curly braces
// shorthand 
// datatype of function
// first class functions
