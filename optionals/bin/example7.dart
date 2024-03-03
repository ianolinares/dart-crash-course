void main(List<String> args){
  // const String? firstName; // must assign value when final/const
  String? firstName; // must assign value when final/const
  print(firstName);

  try{
    String? firstName2; // must assign value when final/const
    print(firstName!); // putting this ! will force read the value 
    // should not do this do not gamble
  } catch(error){
    print(error);
  }
}

// note: force unwrapping


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example7.dart'