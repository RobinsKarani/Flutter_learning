// File: person.dart

class Person {
  String _name; // Private variable
  int _age; // Private variable

  // Constructor
  Person(this._name, this._age);

  // Getter for _name
  String get name => _name;

  // Setter for _name
  set name(String name) {
    _name = name;
  }

  // Getter for _age
  int get age => _age;

  // Setter for _age with validation
  set age(int age) {
    if (age < 0) {
      throw Exception('Age cannot be negative');
    }
    _age = age;
  }
}
