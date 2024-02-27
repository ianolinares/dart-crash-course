void main(List<String> args){
  const name = "Foo"; //  avoids assining new value to the variable. will not allow any modification to value itself / immutable
  //name = "Ian"; // this will error "Error: Can't assign to the const variable"
  print(name);

  //ex for list variable:
  // final age = [1,2,3];
  // print(age);
  // age.removeAt(0); // can be compile but will throw an error, hence, value inside the variable cant be changed.
  // print(age);
}

// Note: const variable 
// cannot assign new value at all and internal value
// can't change the content of it like when you remove a value in list
// if assign new value, it will not allow in compile time, it will throw error on runtime
// Modifying(add/delete) List datatype[] however will allow in compile time but will throw error on runtime (compilable/but will not change the content)

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'