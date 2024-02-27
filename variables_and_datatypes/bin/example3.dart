void main(List<String> args){
  var address = "234 street";
  print(address);
  address = "123 street"; // can be allowed since it's the same datatype
  //address = 123; // this will throw an error "Error: A value of type 'int' can't be assigned to a variable of type 'String'"
  print(address);
}

// Note: Mutating variable (var/vanilla variable)
// value can be change,  
// cant change the datatype though
// assign datatype at compile time

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example3.dart'