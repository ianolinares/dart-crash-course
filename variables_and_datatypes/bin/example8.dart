void main(List<String> args){
  final yourList = [1,2,3];
  //yourList = [4,5,6]; // will throw na error
  yourList.add(5);
  
  print(yourList);
}

// Note: Final allows mutation of variables contents
// cant assign new values



//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example8.dart'