// importing dart:math library
import 'dart:math';

// creating a class DataProvider
class DataProvider {
  // creating a method stringorNull

/* The ternary operator ? : is a shorthand for an if-else statement. 
It evaluates the boolean condition before the ?. If the condition is true, 
it returns the value before the :; if false, 
it returns the value after the :. */
  String? get stringorNull => Random().nextBool() ? "Hello" : null;

  // creating a method myMethod
  void myMethod() {
    String? value = stringorNull;
    // checking if value String or not
    if (value is String) {
      print("The length of value is ${value.length}");
    } else {
      print("The value is not string.");
    }
  }
}

// main method
void main() {
  DataProvider().myMethod();
}
