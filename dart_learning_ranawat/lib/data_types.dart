void main() {
  // Integer variable
  int age = 25; // Represents whole numbers (e.g., 25, -10, 0)

  // Do: Use int for whole numbers.
  // Don't: Use int for non-integer values.

  // Boolean variable
  bool isStudent = true; // Represents true or false values

  // Do: Use bool for conditions or flags.
  // Don't: Use bool for other types of data.

  // Dynamic variable
  dynamic x =
      10; // Can hold any type of value (not recommended unless necessary)

  // Do: Use dynamic sparingly when the type is unknown or changing frequently.
  // Don't: Rely heavily on dynamic if the type is predictable.

  // Integer variable with explicit type declaration
  int temperature = 30; // Explicitly declares the type of the variable

  // Boolean variable with explicit type declaration
  bool isSunny = false; // Explicitly declares the type of the variable
}
/* Meaningful Names: Use descriptive and meaningful variable names to improve code readability.
Consistent Naming Conventions: Follow naming conventions like camelCase for variables.
Avoid Overusing dynamic: Use dynamic sparingly and only when the type cannot be determined at compile-time.
Explicitly Declare Types: Explicitly declare variable types when it enhances code clarity.
Use Boolean Variables for Conditions: Use boolean variables for conditions to improve code readability.
Avoid Mixing Types with dynamic: Avoid assigning values of different types to dynamic variables unless absolutely necessary. */