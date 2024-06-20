// Blueprint for a toy robot
class ToyRobot {
  // Parts of the toy robot
  String name;
  String color;

  // How to build the toy robot
  ToyRobot(this.name, this.color);

  // What the toy robot can do
  void sayHello() {
    print("Hello! I am $name, the $color robot.");
  }
}

void main() {
  // Making an instance of the toy robot
  var myRobot = ToyRobot('Robo', 'red');

  // Using the toy robot
  print(myRobot.name); // Output: Robo
  print(myRobot.color); // Output: red
  myRobot.sayHello(); // Output: Hello! I am Robo, the red robot.
}
