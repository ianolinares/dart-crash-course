void main(List<String> args){
  const String? name = null; // can be null optional value
  print(name);
}

// note: optionality



//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'