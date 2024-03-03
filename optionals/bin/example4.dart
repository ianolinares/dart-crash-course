void main(List<String> args){
  String? lastName;
  // lastName = "buz";
  lastName ??= "bar"; // will assign value to left only if the variable is null
  print(lastName);
}

// note: nullable default values


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example4.dart'