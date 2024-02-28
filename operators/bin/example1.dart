void main(List<String> args){
  const age1 = 64;
  const age2 = 30;

  print(age1 + age2); 
  print(age1 + age2 + 30); 
  print(age1 - age2);
  print(age1 * age2);
  const double divided = age1 / age2;
  print (divided);
  // print(age1 / age2); //print a floating value, return default as double
  const intDivided = age1 ~/ age2; //truncating division operator, no floating points, only integer part will be returned.
  print(intDivided);
}

// note: Simple Integer Operators
// num
// start from left hand sign (pemdas not applied)


// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'