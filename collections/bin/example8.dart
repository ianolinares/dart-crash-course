import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
    }
  };

  final info2 = UnmodifiableMapView(info);

  try {
    info2.addAll({
      'phone': '123-456-789',
    });

    print(info2);
  } catch (e) {
    print(e);
  }
}

// point is if you class that exposes a list. need to encapsulate and hide it arrays and lists.