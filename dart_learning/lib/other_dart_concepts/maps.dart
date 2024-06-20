void main() {
  // Declare and initialize the map
  var fruits = Map<String, int>();

  // Adding key-value pairs to the map
  fruits['apple'] = 1;
  fruits['banana'] = 2;
  fruits['orange'] = 3;

  // Accessing values by key
  print(fruits['apple']); // Output: 1

  // Modifying a value
  fruits['banana'] = 5;

  // Removing a key-value pair
  fruits.remove('orange');

  // Iterating over the map
  fruits.forEach((key, value) {
    print('$key: $value');
  });
  // Output:
  // apple: 1
  // banana: 5
}
