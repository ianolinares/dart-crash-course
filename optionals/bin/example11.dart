void main(List<String> args) {
  // String? lastName;

  print(getfullName("Ian", "Olinares"));
  print(getfullName(null, null));
}

String getfullName(
  String? firstName,
  String? lastName,
) =>
    withAll(
      [firstName, lastName], // return a List<String>
      (names) => names.join(' '),
    ) ??
    'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());

//below without optional datatype

String? withAll2(
  List<String?> optionals,
  String Function(List<String>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<String>());





// T is datatype/function String/int/double/void

// note: unwrapping multiple optionals, might be hard, this is for list multiple optionals 


//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example11.dart'