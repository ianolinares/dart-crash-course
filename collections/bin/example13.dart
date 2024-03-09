void main(List<String> args) {
  final string = 'abracadabra';
  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result);

  var result = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();

  print(result);
  print('-------------');

  final allNumbers = Iterable.generate(100);
  // final evenNumbers = [
  //   for (final num in allNumbers) (num % 2 == 0) ? num : null
  // ];
  // evenNumbers.removeWhere((e) => e == null);
  // print(evenNumbers);
  final evenNumbers = [
    for (final num in allNumbers)
      if (num % 2 == 0) num
  ];

  print(evenNumbers);
  print('-------------');

  final evenNumbersFunctional = allNumbers.where((e) => e % 2 == 0);
  print(evenNumbersFunctional);
  print('-------------');

  final oddNumbers = [
    for (final num in allNumbers)
      if (num % 2 != 0) num
  ];

  print(oddNumbers);
  print('-------------');

  final oddNumbersFunctional = allNumbers.where((e) => e % 2 != 0);
  print(oddNumbersFunctional); // lazily evaluated when functionaly
  print('-------------');

  final names = [
    'John Doe',
    'James Smith',
    'Alice Jones',
  ];

  final namesAndLengths = {
    for (final name in names) name: name.length,
  };

  print(namesAndLengths);
}
