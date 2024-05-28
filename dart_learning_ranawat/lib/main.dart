// void main() {
//   String? someValue;

//   print(someValue);

//   someValue = '354 Hello World';
//   print(someValue.length);

//   someValue = null;
//   print(someValue?.length);
// }
void main() {
  String name = PrintName();
  print(name);
}

String PrintName() {
  return 'Hello World';
}
