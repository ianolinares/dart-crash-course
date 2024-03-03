void main(List<String> args){
  String? lastName;
  print(lastName?.length); // if you invoke a property for null valued variable

  print(lastName ?? 'foo');

  String? nullName;
  final bla = nullName ?? "foo"; // takes the none null value, one should be null in the operation
  print(bla);
}

// note: null-aware operator


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example5.dart'