void main(List<String> arg) {
  greet();

  // you would never invoke the function and assign
  // the result to a variable
  // not a good code/ no point of doing
  // e.g
  // final void value = greet();
}

void greet() {
  print('greet');
}
