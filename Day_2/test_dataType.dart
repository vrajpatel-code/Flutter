void main() {
  int a = 10;
  double b = 20.5;
  print("The value of a is: $a");
  print("The value of b is: $b");

  print("The sum of a and b is: ${a + b}");
  print("The difference of a and b is: ${a - b}");
  print(r"The product of a and b is: ${a * b}");
  print("The quotient of a and b is: ${(a / b).toStringAsFixed(2)}");

  String name = "Alice";
  print("Hello, $name!");
  print("Type of name is: ${name.runtimeType}");
  bool isEven = a % 2 == 0;
  print("Is a even? $isEven");

  var c = "This is a string";
  print("The value of c is: $c");

  Runes unicodeString = "Hello, World!".runes;
  print("The Unicode code points of the string are: ${unicodeString.toList()}");

  print(int.parse("123"));
  print(double.parse("45"));
  print(num.parse("3.14"));
  print(b.toString().runtimeType);


  
}
