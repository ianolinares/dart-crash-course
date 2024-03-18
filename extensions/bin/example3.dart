void main(List<String> args) {
  // 1.to(10) -> Iterable[1,2,3,4,5,6,7,8,9,10]
  print(1.to(10));
  print(10.to(1));
  print(11.to(10, inclusive: false));
  print(10.to(10, inclusive: false));
}

// not a getter because it's a function that has parameters

extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}
