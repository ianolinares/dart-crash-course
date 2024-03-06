void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getfullName();
  final resolveFullName = fullName; // this will resolved the value
  print('after');
  print('resolveFullName = $resolveFullName');
  // print(fullName);
}

String getfullName() {
  print('getFullName() is called');
  return 'John Doe';
}

// if late variable was assigned to non late variable
// it will resovlve it's value immediately