void main(List<String> args) {
  // print(AnimalType.values);
  describeAnimal(animalType(fromStr: 'rabbit'));
  describeAnimal(animalType(fromStr: 'cat'));
  describeAnimal(animalType(fromStr: 'dog'));
  describeAnimal(animalType(fromStr: 'horse '));
}

void describeAnimal(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('Rabbit');
      break;
    case AnimalType.dog:
      print('dog');
      break;
    case AnimalType.cat:
      print('cat');
      break;
    default:
      print('Unknown animal');
      break;
  }
}

AnimalType? animalType({
  required String fromStr,
}) {
  try {
    return AnimalType.values.firstWhere(
      (element) => element.name == fromStr,
    );
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
  monkey,
}
