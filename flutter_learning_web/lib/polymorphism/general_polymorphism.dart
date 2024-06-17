/* 
Imagine you're running a pet store, and you have different types of animals, like dogs, cats, and birds. Each type of animal has its own unique way of making sounds. Dogs bark, cats meow, and birds chirp or sing.

In OOP, you can create a class called `Animal` that represents the common characteristics and behaviors of all animals, such as having a name, age, and the ability to make a sound. However, since each animal makes a different sound, you can't implement a specific sound method in the `Animal` class.

Here's where polymorphism comes into play. Polymorphism means "many forms," and it allows objects of different classes to be treated as objects of a common superclass. In our pet store example, we can create separate classes for `Dog`, `Cat`, and `Bird`, all of which inherit from the `Animal` class. Each of these subclasses can have its own implementation of the `makeSound()` method that accurately represents the sound that particular animal makes.

Here's how it might look in Dart:

```dart */
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print("The animal makes a sound");
  }
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("$name barks: Woof! Woof!");
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("$name meows: Meow! Meow!");
  }
}

class Bird extends Animal {
  Bird(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print("$name chirps: Chirp! Chirp!");
  }
}

/* In this example, the `Animal` class has a `makeSound()` method that simply prints a generic message. The `Dog`, `Cat`, and `Bird` classes override this method with their own implementation, which prints a message specific to the sound that particular animal makes.

Now, let's say you have a list of animals in your pet store, and you want to make them all make their respective sounds. Thanks to polymorphism, you can treat them all as `Animal` objects, even though they're instances of different subclasses:
 */
void main() {
  List<Animal> animals = [
    Dog("Buddy", 3),
    Cat("Whiskers", 2),
    Bird("Tweety", 1),
  ];

  for (Animal animal in animals) {
    animal.makeSound();
  }
}
/* 

When you run this code, it will output:

```
Buddy barks: Woof! Woof!
Whiskers meows: Meow! Meow!
Tweety chirps: Chirp! Chirp!
```

Even though the `animals` list contains instances of different classes (`Dog`, `Cat`, and `Bird`), the `makeSound()` method is called on each object, and the appropriate implementation for that specific class is executed, thanks to polymorphism.

By using polymorphism, you can write more flexible, reusable, and maintainable code. 
It allows you to define a common interface (the `Animal` class) and then have different
 implementations (the subclasses) for different types of objects,
  without having to duplicate code or
 use conditional statements to handle each case separately. */