void main(List<String> args){
  List<String>? names; // the value could be empty
  // List<String?> names; // the value inside could contain a null value but value cant be null as a whole
  // List<String?>? names; // the value inside could contain a null value and value can be null as a whole
  print(names?.length);

  List<String?>? names2;
  names2?.add("foo");
  names2?.add(null);
  print(names2); // return null cause list was not intialized


  List<String?>? names3 = [];
  names3.add("foo"); //no need to put ?/optionals
  names3.add(null);
  print(names3); // return ["foo", null] cause list was  intialize

  List<String?>? names4;
  names4?.add("foo"); //no need to put ?/optionals
  names4?.add(null);
  print(names4); // return null cause list was not  intialize


  final String? first = names4?.first;
  print(first ?? "No first name found");
  
  names3 = [];
  names3.add("Baz");
  names3.add("Baz2");
  print(names3);

}

// note: nullable collections


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example6.dart'