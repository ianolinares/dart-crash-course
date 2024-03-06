void main(List<String> args) {
  const names = ['John', 'Paul', 'George', 'Ringo'];
  var counter = 0;
  // as long as
  // while (counter < 4) {
  //   print(names[counter]); // infinite loop
  // }

  while (counter < 4) {
    print(names[counter]); // infinite loop
    counter++;
  }

  print("-----");

  counter = 0;
  while (counter < 4) {
    print(names[counter++]);
  }

  print("-----");

  // counter = 0;
  // while (counter++ < 4) {
  //   print(names[counter]); // infinite loop
  //   //avoid this because it evaluates it before it does the calculation
  // }
  // print("-----");

  counter = -1;
  while (++counter < names.length) {
    print(names[counter]); // infinite loop
  }

  print("-----");
  // reverse order
  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }

  print("-----");
  // evaluate at the end of the block
  counter = 0;
  do {
    print(names[counter++]);
  } while (counter < names.length);

  print("-----");
  // evaluate at the end of the block with break
  counter = 0;
  do {
    print(names[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < names.length);

  print("-----");
  // evaluate at the end of the block with break
  counter = 0;
  do {
    final name = names[counter++];
    if (name == 'George') {
      continue; //skips George
    }
    print(name);
  } while (counter < names.length);
}

// while loop
