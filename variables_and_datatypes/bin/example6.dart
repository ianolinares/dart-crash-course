void main(List<String> args){
  const int age = 10;
  const age2 = 100; //possible

  print(age);
  print(age2);


  

}

// Note: Inferring data types
// you may specify the data type after the const/final 
// but data type infers automatically


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example6.dart'