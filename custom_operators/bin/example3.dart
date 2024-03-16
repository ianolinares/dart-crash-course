void main(List<String> args) {
  // int? a;
  // int? b;
  // int c = 3;
  // int d = 4;

  print(add());
  print(add(null, 1));
  print(add(1, null));
  print(add(1, 1));
}

int? add([int? a, int? b]) {
  return a + b;
}

// void bla(
//   int? value1,
//   int? value2,
// ){
//   final result = value1 + value2;
// }

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    final thisShadow = this;
    // if this != null && other  == null, return this
    if (this != null && other == null) {
      return this as T;
    }
    // if this == null && other  != null, return other
    else if (this == null && other != null) {
      return other as T;
    }
    // if this != null && other  != null, return this + other
    else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    }
    // if this == null && other  == null, return 0
    else {
      return 0 as T;
    }
  }
}

  
 

// adding two nullable integer
