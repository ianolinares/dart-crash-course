void main(List<String> args) async {
  print(await getUsername());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
  // print(getPhoneNumber());
}

Future<String> getUsername() async => 'John Doe';
Future<String> getAddress() async => Future.value('123 Main St');
Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 1), () => '555-555-5555');
Future<String> getCity() async {
  // to trigger must put await before the future
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'India';

//async doesnt really contribute with anything here
Future<String> getZipCode() async =>
    Future.delayed(const Duration(seconds: 1), () => '12345');
