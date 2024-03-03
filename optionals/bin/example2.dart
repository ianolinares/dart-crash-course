void main(List<String> args){
  const someValue = null; // no data type, dynamic
  print(someValue);
}

// note: untype null values


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example2.dart'