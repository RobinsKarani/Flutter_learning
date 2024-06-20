// File: car.dart

// Define a class Car
class Car {
  String _model; // Private variable

  Car(this._model); // Constructor

  // Method to display model
  void displayModel() {
    print('Model: $_model'); // Accessing private variable
  }

  // Private method
  void _startEngine() {
    print('Engine started');
  }
}
