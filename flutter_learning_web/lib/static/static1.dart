class Student {
  static String schoolName = "ABC School"; // Static property
  String name;
  int age;

  // Constructor with named parameters
  Student(this.name, this.age);

  static void printSchoolName() {
    // Static method
    print("School Name: $schoolName");
  }

  void printDetails() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Student.printSchoolName(); // Accessing static method

  // Creating instances of Student and initializing them
  Student student1 = Student("Alice", 15);
  student1.printDetails();

  Student student2 = Student("Bob", 16);
  student2.printDetails();
}
