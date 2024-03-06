void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'key': 'value'}); // map
  describe([1, 2, 3, 4, 5, 6]); // list
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('this is a double');
      break;
    case String:
      print('this is a string');
      break;
    case bool:
      print('this is a boolean');
      break;
    case const (Map<String, String>):
      print('this is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}
 

// switch
// need break every case

