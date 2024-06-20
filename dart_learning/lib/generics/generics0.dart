// Using Generics
class Data<T> {
  T data;
  Data(this.data);
}

void main() {
  // create an object of type int and double
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);

  // print the data
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
}
/* The purpose of using generics in the Dart programming language is to allow you 
to create reusable code that can work with different types of data. 
Generics provide type safety and improve code readability and maintainability.

In the provided code, the `Data` class is a generic class that takes a type parameter `T`.
 This means that you can create instances of `Data` with different types, such as `Data<int>`
  or `Data<double>`. The `data` property of the `Data` class is of type `T`, allowing you to 
  store and access values of any type.

By using generics, you can avoid type casting and ensure that your code is type-safe. For example, 
in the `main` function, you can directly access the `data` property of `intData` and `doubleData`
 without needing to cast them to their respective types.

Generics are particularly useful when working with collections, such as lists or maps, 
where you need to store elements of different types. By using generics, you can create type-safe
 collections that enforce the correct type of elements.

In summary, generics in Dart allow you to create reusable code that can work with different 
types of data, improve type safety, and enhance code readability and maintainability. */