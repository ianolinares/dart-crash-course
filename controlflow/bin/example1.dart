void main(List<String> args) {
  const yourName = 'Foo';
  const myName = 'Bar';

  final foo = yourName == myName;
  print(foo);

  if (yourName == myName) {
    print('We have the same name!');
  } else if (yourName == 'Foo') {
    print('hello, Foo!');
  } else if (yourName == 'Foo' && myName == 'Bar') {
    print('I am Foo and you are Bar');
  } else {
    print('Something else');
  }
}
