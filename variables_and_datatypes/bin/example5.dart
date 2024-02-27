void main(List<String> args){
  const age2 = 10;
  final age = age2; //possible

  print(age);

  // constants cannot be assigned a non-constant value so this is invalid
  // final age = 10;
  // const age2 = age; // throws an error "Error: Not a constant expression."

}

// Note: Assigning to constant value


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example5.dart'