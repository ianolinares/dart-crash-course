void main(List<String> args){
  // binary infix operators
  // does not mutate the variable when used
  // int better as datatype to work on infix operators
const age = 50;
print(age + 20);
print(age - 20);
print(age * 20);
print(age / 20);
print(age ~/ 20); 
print(age % 20); //remainder modulo
print(age == 20); //compares two values returns boolean(true/false)
print(age > 20); //compares two values returns boolean(true/false)
print(age < 20); //compares two values returns boolean(true/false)
print(age >= 20); //compares two values returns boolean(true/false)
print(age <= 20); //compares two values returns boolean(true/false)

// bitwise infix operator
print(age & 20); //bitwise AND 1 & 1 = 1, 0 & 1 =0, 1 & 0 = 0, 0 & 0 = 0
print(age | 20); //bitwise OR 1 | 1 = 1, 0 | 1 =0, 1 | 0 = 0, 0 | 0 = 0
print(age ^ 20); //bitwise XOR 1 ^ 1 = 1, 0 ^ 1 =0, 1 ^ 0 = 0, 0 ^ 0 = 0

// bitwise shift operator

print(age << 20); //bitwise left shift
print(age >> 20); //bitwise right shift

// 0110 0011
// shift left by 2
// then > 1000 1100

}

// note: Binary Infix Operators
// 4 types of operators
// unary prefix, unary postfix, binary infix, compound assignment



// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example4.dart'