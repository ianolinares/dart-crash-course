void main(List<String> args) {
  print(doTypesMatch(1, 2));
  print(doTypesMatch(1, 1.2));
  print(doTypesMatch(1, 'Foo'));
  print(doTypesMatch('Foo', 'Bar'));
}

// // 1st example without generics
// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypesMatch<L, R>(L a, R b) => L == R;
