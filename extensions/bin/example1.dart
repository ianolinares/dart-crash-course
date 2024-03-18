void main(List<String> args) {
  print('Hello, World!'.reversed);
}

extension on String {
  String get reversed => split('').reversed.join();
}




// void main(List<String> args) {
//   final value = 20;
//   final timesFour = value.timesFour;
//   print(timesFour);
//   print(30.timesFour);
// }

// extension on int {
//   int get timesFour => this * 4;
// }

// getter
// adding functionality to an existing type