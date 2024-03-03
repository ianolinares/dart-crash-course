void main(List<String> args){
  int? age = 10; // nullable if you put ?
  age = null; // can be assign a null value
  print(age);

  if (age == null){ // operand cant be null, it will always be false
    print("Age is null");
  } else {
    print("Age is not null");
  }
}

// note: comparing optionals


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example3.dart'