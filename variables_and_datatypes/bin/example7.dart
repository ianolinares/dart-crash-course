void main(List<String> args){
  const myList = [1,2,3];
  //myList = [5,6,7]; can't assign new values
  //myList.add(5);

  print(myList);
  

}

// Note: Mutating const contents



//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example7.dart'