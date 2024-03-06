void main(List<String> arg) {
  doSomthingWithAge(age: null);
  doSomthingWithAge(age: 42);
}

void doSomthingWithAge({
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years you will be in $in2Years years old');
  } else {
    print('You didnt tell me your age');
  }
}


//named variables
// required variables should not have default variables