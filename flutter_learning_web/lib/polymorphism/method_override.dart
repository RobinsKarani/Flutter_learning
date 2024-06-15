/* What Happens Without @override?
In Dart, the @override keyword is not strictly necessary for the code to work, but it serves several important purposes.
Code Understanding:
The @override keyword helps other programmers (and yourself) understand that a method is meant to replace a method in the parent class.
Error Checking
It helps the Dart compiler catch errors. If you misspell the method name in the child class or if the parent class method changes, 
the compiler can warn you that you're not actually overriding anything. */

/* 
class Toy {
  void move() {
    print('Move forward');
  }
}

class Car extends Toy {
  // No @override keyword here
  void move() {
    print('Drive on wheels');
  }
}

class Plane extends Toy {
  // No @override keyword here
  void move() {
    print('Fly in the sky');
  }
}

class Boat extends Toy {
  // No @override keyword here
  void move() {
    print('Sail on water');
  }
}

void main() {
  Toy myCar = Car();
  Toy myPlane = Plane();
  Toy myBoat = Boat();

  myCar.move(); // Output: Drive on wheels
  myPlane.move(); // Output: Fly in the sky
  myBoat.move(); // Output: Sail on water
}
 */


/* What You Lose Without @override
Code Clarity:Without @override, it’s less clear to someone reading the code that the move method in Car, Plane, 
and Boat is intended to override the method in the Toy class.

Compiler Assistance:If you accidentally do something wrong, like misspell the method name,
 the Dart compiler won't catch it as an error:

dart
Copy code
class Car extends Toy {
  void moove() {  // Misspelled method name
    print('Drive on wheels');
  }
}

void main() {
  Toy myCar = Car();
  myCar.move();  // Output: Move forward (incorrectly calls the Toy class method)
}
In the example above, because moove is misspelled, Dart won't see it as overriding the move method in Toy.
 So when you call myCar.move(), 
 it will use the move method from the Toy class instead,which is not what you intended.
Conclusion
While the code can work without @override, using it is a good practice. 
It makes your code easier to understand and helps prevent errors. 
It's like putting a clear label on your instructions, so everyone knows exactly what they are meant to do. */