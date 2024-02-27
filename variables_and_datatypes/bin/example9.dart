void main(List<String> args){
  const thisList = [4,5,6];
  final thatList = thisList;
  
  //yourList = [4,5,6];
  
  print(thisList);
  // const someList = thisList; // will throw an error
}

// Note: Assigning const and final
// const cant assign using a different variable type
// can only be assigned with const variable.



//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example9.dart'