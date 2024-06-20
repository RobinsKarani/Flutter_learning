class Temperature {
  double _celsius; // Private variable

  // Constructor
  Temperature(this._celsius);

  // Getter for _celsius
  double get celsius => _celsius;

  // Setter for _celsius
  set celsius(double value) {
    if (value < -273.15) {
      throw Exception('Temperature cannot be less than -273.15°C (absolute zero)');
    }
    _celsius = value;
  }

  // Getter for converting celsius to fahrenheit
  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  var temp = Temperature(25.0);

  // Accessing getter
  print('Temperature in Celsius: ${temp.celsius}');
  print('Temperature in Fahrenheit: ${temp.fahrenheit}');

  // Using setter
  temp.celsius = 30.0;
  print('Updated temperature in Celsius: ${temp.celsius}');
}
