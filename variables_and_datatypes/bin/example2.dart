void main(List<String> args){
  final age = [1,2,3];
  print(age);
  age.removeAt(0); // valid and will be apply
  print(age);
  //age = [1,2,4];// this will throw error "Error: Can't assign to the final variable"

  
}

// Note: final variable 
// still can't assign new value but can modify value inside the variable(List/Array).
// half immutable

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example2.dart'