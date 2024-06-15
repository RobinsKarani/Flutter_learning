// General Toy class with a move method
class Toy {
  void move() {
    print('Move forward');
  }
}

// Car class that overrides the move method
class Car extends Toy {
  void move() {
    print('Drive on wheels');
  }
}

// Plane class that overrides the move method
class Plane extends Toy {
  @override
  void move() {
    print('Fly in the sky');
  }
}

// Boat class that overrides the move method
class Boat extends Toy {
  @override
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
