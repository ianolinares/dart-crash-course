void main(List<String> args){
  // unary prefix operators
  var age = 30;
  var age2 = --age; //will operate then assign new value to age variable and assign the same value to age2 variable
  print(age);
  print(age2);
  print(--age);
  // 
  print(!true); // for booleans not mutating operator
  print(!false);

  print(++age); // increment operator
  print(~1); //unary bitwise complement prefix operator
  // (0000 0000) (0000 0000) (0000 0000) (0000 0001) ->
  // (1111 1111) (1111 1111) (1111 1111) (1111 1110) in short "-2" in integer

  print(-age); //return the negative value
  print(-(-age)); 

}

// note: Unary Prefix Operators
// 4 types of operators
// unary prefix, unary postfix, binary infix, compound assignment



// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example2.dart'