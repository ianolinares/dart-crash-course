void main(List<String> args){  
  final String? firstName = null;
  if (firstName == null) {
    print("firstname value is null");
  } else {
    // final length = firstName?.length; // no need to put operationals in the else block, this will error
    final length = firstName.length; // no need to put operationals 
  }
}

// note: nullable type promotion


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example8.dart'