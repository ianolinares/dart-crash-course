void main(List<String> args){
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue(); //it doesnt not initialize until used
  print("youre here");
  print(yourValue); // first initialize so it only trigger the function;
  print(yourValue); //it wont reinitialize when used
}

int getValue() {
  print("getValue called");
  return 10;
}

// Note: Late variables


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example10.dart'