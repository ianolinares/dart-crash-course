void main(List<String> args){
  const int1 = 1;
  const double1 = 1.1;
  const double result = int1 + double1; // will be a double no matter what as long there's a double datatype in the equation

  print(result);



}

// note: Type promotion in operators
// 4 types of operators
// unary prefix, unary postfix, binary infix, compound assignment



// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example5.dart'