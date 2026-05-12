// Demonstrating OOP functionalities in Dart

// Encapsulation: Using private fields and getters/setters
class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  set name(String n) => _name = n;

  int get age => _age;
  set age(int a) => _age = a;

  void display() {
    print('Name: $_name, Age: $_age');
  }
}

// Abstraction: Abstract class
abstract class Shape {
  double area();
}

// Inheritance and Polymorphism
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

// Another example with inheritance
class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print('$name makes a sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print('$name barks');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void speak() {
    print('$name meows');
  }
}

void main() {
  // Encapsulation
  Person person = Person('Alice', 30);
  person.display();
  person.name = 'Bob';
  person.display();

  // Abstraction, Inheritance, Polymorphism
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);
  print('Circle area: ${circle.area()}');
  print('Rectangle area: ${rectangle.area()}');

  // Polymorphism with list
  List<Shape> shapes = [circle, rectangle];
  for (var shape in shapes) {
    print('Area: ${shape.area()}');
  }

  // Inheritance and Polymorphism
  Animal animal = Animal('Generic');
  animal.speak();

  Dog dog = Dog('Buddy');
  dog.speak();

  Cat cat = Cat('Whiskers');
  cat.speak();

  // Polymorphism
  List<Animal> animals = [dog, cat];
  for (var a in animals) {
    a.speak();
  }
}