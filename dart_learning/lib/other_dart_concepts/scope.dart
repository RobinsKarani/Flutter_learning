String topLevel = "I'm a top-level variable";

void main() {
  String insideMain = "I'm inside the main function";

  void myFunction() {
    String insideFunction = "I'm inside the myFunction";

    void nestedFunction() {
      String insideNestedFunction = "I'm inside the nestedFunction";

      print(topLevel); // Outputs: I'm a top-level variable
      print(insideMain); // Outputs: I'm inside the main function
      print(insideFunction); // Outputs: I'm inside the myFunction
      print(insideNestedFunction); // Outputs: I'm inside the nestedFunction
    }
  }
}
