// File: main.dart

// Import the Car class from car.dart
import 'illustration1.0.dart';

void main() {
  var myCar = Car('Toyota');

  // Trying to access a private variable (will cause an error)
  // Uncommenting the line below will cause a compilation error:
  // print('Model: ${myCar._model}');

  // Trying to call a private method (will cause an error)
  // Uncommenting the line below will cause a compilation error:
  // myCar._startEngine();

  // Accessing a public method (no error)
  myCar.displayModel();
}
