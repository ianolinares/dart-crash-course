void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
  final int intValue = eitherIntOrDouble();
  print(intValue);
}

// E or T

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T; // type cast as generics
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not supported');
  }
}


// first example without generics:
// void main(List<String> args) {
//   // as will typecast value from num to double
//   final double doubleValue = eitherIntOrDouble(WhatToReturn.double) as double;
//   print(doubleValue);
//   final int intValue = eitherIntOrDouble(WhatToReturn.int) as int;
//   print(intValue);
// }

// enum WhatToReturn {
//   int,
//   double,
// }

// num eitherIntOrDouble(WhatToReturn whatToReturn) {
//   switch (whatToReturn) {
//     case WhatToReturn.int:
//       return 1;
//     case WhatToReturn.double:
//       return 1.0;
//   }
// }
// generics