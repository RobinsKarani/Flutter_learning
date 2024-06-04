Function greet(String name) {
  return (String timeOfDay) {
    return 'Good $timeOfDay, $name!';
  };
}

void main() {
  var greetAlice = greet('Alice');
  var greetBob = greet('Bob');

  print(greetAlice('morning')); // Outputs: Good morning, Alice!
  print(greetBob('evening')); // Outputs: Good evening, Bob!
}
