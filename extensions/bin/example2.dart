void main(List<String> args) {
  final sumOfIntgers = [1, 2, 3].sum;
  final sumOfDoubles = [2.2, 3.3, 4.4].sum;
  print(sumOfDoubles);
  print(sumOfIntgers);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}



// num return type can be int or double,
// entire list cant be a single dataype

// extension on Iterable<num> {
//   num get sum => reduce((a, b) => a + b);

//   // num get sum {
//   //   final thisShadow = this;
//   //   var total = 0.0;
//   //   for (var number in thisShadow) {
//   //     total += number;
//   //   }
//   //   return total;
//   // }
// }
