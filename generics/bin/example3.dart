void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherAndSisterAndMyFish = {
    'brother': Person(),
    'sister': Person(),
    'Fishy': Fish(),
  };

  final allValues = [
    momAndDad,
    brotherAndSisterAndMyFish,
  ];

  describe(allValues);
}

// what is type definition,  alias for a function, generic type def
typedef BreathingThings<T extends CanBreathe> = Map<String, T>;
// typedef BreathingThings = Map<String, CanBreathe>;

mixin CanBreathe {
  void breathe();
}

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breath() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();
  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
