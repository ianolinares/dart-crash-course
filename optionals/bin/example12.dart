void main(List<String> args) {
  String? firstName = 'John';
  // String? lastName = 'Doe'; // will return a value
  String? lastName;

  final fullName = firstName.flatMap(
        (fname) => lastName.flatMap(
          (lname) => '$fname $lname',
        ),
      ) ??
      'Either first or last name or both are null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this; // save to shadow so it can be read on the else block
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
} 

// note: optional flatmap
// dont forget to add return on non void class

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example12.dart'