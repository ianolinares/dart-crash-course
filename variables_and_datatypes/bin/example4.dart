void main(List<String> args){
  String name = "Foo";
  var address = "";
  address = name;

  //invalid operation:
  // const age = 20;
  // address = age; // throws an error "A value of type 'int' can't be assigned to a variable of type 'String'."
  print(address);
}

// Note: Assign value to each other
// String - cant assign value with different data type  
// var -  datatype is assigned on compile time

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example4.dart'