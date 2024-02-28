void main(List<String> args){
  
  var myAge = 20;
  print(myAge = 30); //this will evaluate so it will output 30
  // print(myAge ~/ 2); // this will not assign a new value
  print(myAge ~/= 2); //this will evaluate so it will output 15
  print(myAge *= 2); // myAge * 2 = myAge, this will evaluate so it will output 30 
  print(myAge += 4); // myAge + 2 = myAge, this will evaluate so it will output 34 
  print(myAge &= 2); // 
  print(myAge |= 2); // 
  print(myAge ^= 2); // 
  print(myAge -= 2); // 

}

// note: Compound Assignment Operators
// 4 types of operators
// unary prefix, unary postfix, binary infix, compound assignment



// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example6.dart'