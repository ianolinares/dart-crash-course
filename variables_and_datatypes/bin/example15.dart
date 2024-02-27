void main(List<String> args){
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.0;
  print(someDouble);
  const String someString = "Hello";
  print(someString);
  const bool someBoolean = true; // small letter can be false
  print(someBoolean);
  const List<int> someList = [1,2,3];
  print(someList);
  const Map<String,String> someMap = {"foo": "bar"}; //key value-pair
  print(someMap);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}


// Note: Various Data Types

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example15.dart'