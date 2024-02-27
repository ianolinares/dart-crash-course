void main(List<String> args){
  final String theirName = "Ian";
  print(theirName);

  // ignore: non_constant_identifier_names -- put in the linter to ignore naming conventions

}


// Note: Naming Conventions
// camel case variable -- first letter should be small then capital letter per next word.


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example14.dart'