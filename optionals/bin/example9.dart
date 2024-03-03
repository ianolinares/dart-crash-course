void main(List<String> args){  
  String? lastName;


  void changeLastName(){
    lastName = 'Bar';
  }

  // changeLastName();

  print(lastName);

  // final foo = lastName();

  if (lastName?.contains('Bars') ?? true) { 
    // left hand will be evaluated then if the value is null then it will return the right hand value. 
    // it's able to use the .contains() function because it has the optional operator or null operator(?) on variable 
    // it will return true cause it left hand returns true and ?? 

    print("last name contains Bar hey");
  }
  if (lastName?.contains('Bar') == true) {
    print("Last name contains Bar");
  }
}

// note: combining null-aware operators
// dart analysis could be hit or missed
//.? = will allow to get the property and functions of a nullable value
// ?? take the value of the right hand sign if the value is null in left hand side

//fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example9.dart'