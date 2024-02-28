void main(List<String> args){
  // unary postfix operators
var age = 40;
print(age--); // will not operate so it will return the original value before it operates;
print(age);

print(age++);
print(age);



}

// note: Unary Postfix Operators
// 4 types of operators
// unary prefix, unary postfix, binary infix, compound assignment



// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example3.dart'