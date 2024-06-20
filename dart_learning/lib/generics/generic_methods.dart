/* // Define generic method
T genericMethod<T>(T value) {
  return value;
}

void main() {
  // call the generic method
  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.5)}");
  print("String: ${genericMethod<String>("Hello")}");
}
*/
// with multiplr parameters
T genericMethod<T, U>(T value1, U value2) {
  return value1;
}

void main() {
  // call the generic method
  print(genericMethod<int, String>(10, "Hello"));
  print(genericMethod<String, int>("Hello", 10));
}
