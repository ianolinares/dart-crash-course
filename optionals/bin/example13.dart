void main(List<String> args) {
  print(fullName(null, null));
  print(fullName("John", null));
  print(fullName(null, "Doe"));
  print(fullName("John", "Doe"));
  print(myAge(12));
}

String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

String myAge(
  int? age,
) =>
    'My age is ${age.orDefault}';

extension DefaulValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return '' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value fot type $T');
    }
  }
}


// note: default values for optionals
// ondefault in Rust. if var is null then the value is 0, ''

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example13.dart'