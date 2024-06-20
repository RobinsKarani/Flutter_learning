abstract class Shape {
  double area();
  void displayInfo() {
    print("This is a shape");
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  Rectangle rect = Rectangle(5, 10);
  print("Area of the rectangle: ${rect.area()}");
  rect.displayInfo();
}
