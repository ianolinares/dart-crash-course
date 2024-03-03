void main(List<String> args) {
  String? getfullNameOptional() {
    return 'Foo Bar Optional';
  } // this could return null

  String getfullName() {
    return 'Foo Bar';
  } // this could not return null

  final String fullName = getfullNameOptional() ?? getfullName();
  print(fullName);

  final someName = getfullNameOptional();
  someName.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This objec');
    } else {
      print('$runtimeType: $this');
    }
  }
}

//not yet sure about this but it seems extending some function in object so objects object didnt need to put the optional operator to use the function for a null valued variable.


// note: extending optional-types

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example10.dart'