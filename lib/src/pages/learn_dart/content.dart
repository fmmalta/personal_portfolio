class Content {
  // Introduction
  static const String introduction = '''
Essa página é onde você vai aprender mais sobre Dart.
    
Do lado esquerdo, você pode ver uma lista de tópicos que você pode aprender. Clique em um tópico para aprender mais sobre ele.
    
Você pode clicar no botão de menu no canto superior esquerdo para voltar para a página inicial.
    
Divirta-se! 🎉
''';

  // Primitive Data and Variables
  static const String primitiveDataAndVariables = '''
# Primitive Data and Variables

Dart has the following primitive data types:

- `int` - integer numbers
- `double` - floating-point numbers
- `String` - text
- `bool` - boolean values

# Variables

Variables are used to store data. They can be declared using the `var` keyword, followed by the variable name and optionally the value.

```dart
var name = 'John';
```

Variables can also be declared using the type of the variable.

```dart
String name = 'John';
```

Variables can be declared without a value, but they must be assigned a value before they are used.

```dart
String name;
name = 'John';
```

Variables can be declared as `final` or `const`. `final` variables can only be assigned once, while `const` variables are compile-time constants.

```dart
final String name = 'John';
const String name = 'John';
```

Variables can be declared as `dynamic`. `dynamic` variables can be assigned any value, and the type of the variable can change.

```dart
dynamic name = 'John';
name = 1;
```
''';

// Lists
  static const String lists = '''
# Lists

Lists are used to store multiple values. They can be declared using the `List` keyword, followed by the type of the list and optionally the values.

```dart
List<String> names = ['John', 'Jane'];
```

Lists can also be declared using the `var` keyword.

```dart
var names = ['John', 'Jane'];
```

Lists can be declared without values, but they must be assigned values before they are used.

```dart
List<String> names;
names = ['John', 'Jane'];
```

Lists can be declared as `final` or `const`. `final` lists can only be assigned once, while `const` lists are compile-time constants.

```dart
final List<String> names = ['John', 'Jane'];
const List<String> names = ['John', 'Jane'];
```

Lists can be declared as `dynamic`. `dynamic` lists can be assigned any value, and the type of the list can change.

```dart
dynamic names = ['John', 'Jane'];
names = [1, 2];
```

# Accessing list items

List items can be accessed using the index of the item. The index of the first item is `0`.

```dart
List<String> names = ['John', 'Jane'];
print(names[0]); // John
```

# Adding items to a list

Items can be added to a list using the `add` method.

```dart
List<String> names = ['John', 'Jane'];
names.add('Jack');
print(names); // [John, Jane, Jack]
```

# Removing items from a list

Items can be removed from a list using the `remove` method.

```dart
List<String> names = ['John', 'Jane'];
names.remove('John');
print(names); // [Jane]
```

# Iterating over a list

Items in a list can be iterated over using a `for` loop.

```dart
List<String> names = ['John', 'Jane'];
for (var name in names) {
  print(name);
}
```

# List methods

The following methods are available on lists:

- `add` - adds an item to the list
- `remove` - removes an item from the list
- `length` - returns the number of items in the list
- `isEmpty` - returns `true` if the list is empty
- `isNotEmpty` - returns `true` if the list is not empty
- `clear` - removes all items from the list
- `first` - returns the first item in the list
- `last` - returns the last item in the list

And many more... See the [documentation](https://api.dart.dev/stable/dart-core/List-class.html) for more information.

# List constructors

The following constructors are available on lists:

- `List` - creates a list
- `List.filled` - creates a list with a given length and a value for each item
- `List.generate` - creates a list with a given length and a function to generate each item
- `List.unmodifiable` - creates an unmodifiable list
- `List.from` - creates a list from an iterable
- `List.of` - creates a list from an iterable

# List literals

The following list literals are available:

- `[]` - creates an empty list
- `[value1, value2, ...]` - creates a list with the given values
''';

// Maps
  static const String maps = '''
# Maps

Maps are used to store key-value pairs. They can be declared using the `Map` keyword, followed by the type of the key and the type of the value, and optionally the values.

```dart
Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};
```

Maps can also be declared using the `var` keyword.

```dart
var ages = {
  'John': 20,
  'Jane': 25,
};
```

Maps can be declared without values, but they must be assigned values before they are used.

```dart
Map<String, int> ages;
ages = {
  'John': 20,
  'Jane': 25,
};
```

Maps can be declared as `final` or `const`. `final` maps can only be assigned once, while `const` maps are compile-time constants.

```dart
final Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};

const Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};
```

Maps can be declared as `dynamic`. `dynamic` maps can be assigned any value, and the type of the map can change.

```dart
dynamic ages = {
  'John': 20,
  'Jane': 25,
};

ages = {
  'John': 'twenty',
  'Jane': 'twenty-five',
};
```

# Accessing map items

Map items can be accessed using the key of the item.

```dart
Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};

print(ages['John']); // 20
```

# Adding items to a map

Items can be added to a map using the key of the item.

```dart
Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};

ages['Jack'] = 30;

print(ages); // {John: 20, Jane: 25, Jack: 30}
```

# Removing items from a map

Items can be removed from a map using the key of the item.

```dart
Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};

ages.remove('John');

print(ages); // {Jane: 25}
```

# Iterating over a map

Items in a map can be iterated over using a `for` loop.

```dart
Map<String, int> ages = {
  'John': 20,
  'Jane': 25,
};

for (var name in ages.keys) {
  print(name);
}

for (var age in ages.values) {
  print(age);
}

for (var entry in ages.entries) {
  print('\${entry.key}: \${entry.value}');
}
```
''';

// Sets
  static const String sets = '''
# Sets

Sets are used to store unique values. They can be declared using the `Set` keyword, followed by the type of the set and optionally the values.

```dart
Set<String> names = {'John', 'Jane'};
```

Sets can also be declared using the `var` keyword.

```dart
var names = {'John', 'Jane'};
```

Sets can be declared without values, but they must be assigned values before they are used.

```dart
Set<String> names;
names = {'John', 'Jane'};
```

Sets can be declared as `final` or `const`. `final` sets can only be assigned once, while `const` sets are compile-time constants.

```dart
final Set<String> names = {'John', 'Jane'};
const Set<String> names = {'John', 'Jane'};
```

Sets can be declared as `dynamic`. `dynamic` sets can be assigned any value, and the type of the set can change.

```dart
dynamic names = {'John', 'Jane'};
names = {1, 2};
```

# Accessing set items

Set items can be accessed using the `contains` method.

```dart
Set<String> names = {'John', 'Jane'};
print(names.contains('John')); // true
```

# Adding items to a set

Items can be added to a set using the `add` method.

```dart
Set<String> names = {'John', 'Jane'};
names.add('Jack');
print(names); // {John, Jane, Jack}
```

# Removing items from a set

Items can be removed from a set using the `remove` method.

```dart
Set<String> names = {'John', 'Jane'};
names.remove('John');
print(names); // {Jane}
```

# Iterating over a set

Items in a set can be iterated over using a `for` loop.

```dart
Set<String> names = {'John', 'Jane'};
for (var name in names) {
  print(name);
}
```

To see more about Sets, check the [documentation](https://api.dart.dev/stable/dart-core/Set-class.html).
''';

// Enums
  static const String enums = '''
# Enums

Enums are used to represent a fixed number of values. They can be declared using the `enum` keyword, followed by the name of the enum and the values.

```dart
enum Fruit {
  apple,
  banana,
}
```

Enums can be declared with a value for each item.

```dart
enum Fruit {
  apple,
  banana,
}

void main() {
  print(Fruit.apple); // Fruit.apple
  print(Fruit.banana); // Fruit.banana
}
```

You can check the index.

```dart
enum Fruit {
  apple,
  banana,
}

void main() {
  print(Fruit.apple.index); // 0
  print(Fruit.banana.index); // 1
}
```

You can iterate them.

```dart
enum Fruit {
  apple,
  banana,
}

void main() {
  print(Fruit.values); // [Fruit.apple, Fruit.banana]
}
```

You can use them in a switch statement.

```dart
enum Fruit {
  apple,
  banana,
}

void main() {
  var fruit = Fruit.apple;
  switch (fruit) {
    case Fruit.apple:
      print('apple');
      break;
    case Fruit.banana:
      print('banana');
      break;
  }
}
```

You can use them in a list.

```dart
enum Fruit {
  apple,
  banana,
}

void main() {
  var fruits = [Fruit.apple, Fruit.banana];
  print(fruits); // [Fruit.apple, Fruit.banana]
}
```

# Enhanced Enums

Enums can be enhanced using the `extension` keyword. Extensions can be used to add methods to enums.

```dart
enum Fruit {
  apple,
  banana,
}

extension FruitExtension on Fruit {
  String get name {
    switch (this) {
      case Fruit.apple:
        return 'apple';
      case Fruit.banana:
        return 'banana';
    }
  }
}
```

You can add property to enums. This avoids the use of extension, but you can use extensions as well if you want to. Available since Dart 2.17.

```dart
enum Fruit {
  apple('red'),
  banana('yellow');

  const Fruit(this.color);
  final String color;
}

void main() {
  print(Fruit.apple.color); // red
  print(Fruit.banana.color); // yellow
}
```
''';

// Operators
  static const String operators = '''
# Operators

Operators are used to perform operations on variables and values.

# Arithmetic operators

Arithmetic operators are used to perform arithmetic operations.

| Operator | Description |
| --- | --- |
| + | Addition |
| - | Subtraction |
| * | Multiplication |
| / | Division |
| % | Modulus |
| ++ | Increment |
| -- | Decrement |

# Assignment operators

Assignment operators are used to assign values to variables.

| Operator | Description |
| --- | --- |
| = | Assign |
| += | Add and assign |
| -= | Subtract and assign |
| *= | Multiply and assign |
| /= | Divide and assign |
| %= | Modulus and assign |

# Comparison operators

Comparison operators are used to compare two values.

| Operator | Description |
| --- | --- |
| == | Equal to |
| != | Not equal to |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |

# Logical operators

Logical operators are used to combine conditional statements.

| Operator | Description |
| --- | --- |
| && | And |
| \\|\\| | Or |
| ! | Not |

# Type test operators

Type test operators are used to check the type of a variable.

| Operator | Description |
| --- | --- |
| is | True if the object has the specified type |
| is! | False if the object has the specified type |
''';

// Loops
  static const String loops = '''
# Loops

Loops are used to execute a block of code repeatedly.

# For loop

For loops are used to execute a block of code a fixed number of times.

```dart
for (var i = 0; i < 10; i++) {
  print(i);
}
```

# While loop

While loops are used to execute a block of code while a condition is true.

```dart
var i = 0;
while (i < 10) {
  print(i);
  i++;
}
```

# Do-while loop

Do-while loops are used to execute a block of code while a condition is true. The block of code is executed at least once.

```dart
var i = 0;
do {
  print(i);
  i++;
} while (i < 10);
```

# Break

The `break` keyword is used to exit a loop.

```dart
for (var i = 0; i < 10; i++) {
  if (i == 5) {
    break;
  }
  print(i);
}
```

# Continue

The `continue` keyword is used to skip an iteration of a loop.

```dart
for (var i = 0; i < 10; i++) {
  if (i == 5) {
    continue;
  }
  print(i);
}
```

# For-each loop

For-each loops are used to iterate over a list.

```dart
var names = ['John', 'Jane'];
names.forEach((name) {
  print(name);
});
```

# For-in loop

For-in loops are used to iterate over a list.

```dart
var names = ['John', 'Jane'];
for (var name in names) {
  print(name);
}
```
''';

// Conditionals
  static const String conditionals = '''
# Conditionals

Conditionals are used to execute a block of code based on a condition.

# If statement

If statements are used to execute a block of code if a condition is true.

```dart
if (true) {
  print('true');
}
```

# If-else statement

If-else statements are used to execute a block of code if a condition is true, and another block of code if the condition is false.

```dart
if (true) {
  print('true');
} else {
  print('false');
}
```

# If-else if-else statement

If-else if-else statements are used to execute a block of code if a condition is true, another block of code if another condition is true, and another block of code if all conditions are false.

```dart
if (true) {
  print('true');
} else if (false) {
  print('false');
} else {
  print('none');
}
```

# Switch statement

Switch statements are used to execute a block of code based on the value of a variable.

```dart
var fruit = 'apple';
switch (fruit) {
  case 'apple':
    print('apple');
    break;
  case 'banana':
    print('banana');
    break;
  default:
    print('none');
}
```

# Ternary operator

Ternary operators are used to assign a value to a variable based on a condition.

```dart
var fruit = 'apple';
var result = fruit == 'apple' ? 'apple' : 'none';
print(result);
```

# Null-aware operator

Null-aware operators are used to assign a value to a variable if the variable is not null.

```dart
var fruit;
var result = fruit ?? 'none';
print(result);
```

# Null-aware assignment operator

Null-aware assignment operators are used to assign a value to a variable if the variable is null.

```dart
var fruit;
fruit ??= 'apple';
print(fruit);
```

# Assert

Assert statements are used to check if a condition is true. If the condition is false, an error is thrown.

```dart
var fruit = 'apple';
assert(fruit == 'apple');
```
''';

// Functions
  static const String functions = '''
# Functions

Functions are used to perform a task. They can be declared following the function name and optionally the parameters and return type.

```dart
int add(int a, int b) {
  return a + b;
};
```

- `int` is the return type
- `add` is the function name
- `a` and `b` are the parameters

Functions can be declared without a return type.

```dart
void add(int a, int b) {
  print(a + b);
};
```

Functions can be declared without parameters.

```dart
int add() {
  return 1 + 2;
};
```

Functions can be declared with named parameters
  
```dart
int add({int a, int b}) {
  return a + b;
};

add(a: 1, b: 2);
```

Functions can be declared with optional parameters

```dart
int add([int a, int b]) {
  return a + b;
};

add(1, 2);
```
  
''';

// Classes
  static const String classes = '''
# Classes

Classes are used to create objects. They can be declared using the `class` keyword, followed by the class name and optionally the superclass.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can be declared with a superclass.

```dart
class Person extends Animal {
  String name;
  int age;

  Person(this.name, this.age) : super('dog');
}
```

Classes can be declared with a constructor.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can be declared with a named constructor.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.fromName(this.name);
}
```

Classes can be declared with a factory constructor.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromName(String name) {
    return Person(name, 0);
  }
}
```

Classes can be declared with a static method.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  static Person fromName(String name) {
    return Person(name, 0);
  }
}
```

Classes can be declared with a static property.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  static String type = 'person';
}
```

Classes can be declared with a getter.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String get type {
    return 'person';
  }
}
```

Classes can be declared with a setter.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  set type(String type) {
    print(type);
  }
}
```

Classes can be declared with a method.

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printName() {
    print(name);
  }
}
```

Classes can use the `sealed` keyword. Sealed classes can only be extended by classes in the same file.

```dart
sealed class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `abstract` keyword. Abstract classes cannot be instantiated.

```dart
abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `extends` keyword. Classes can only extend one class.

```dart
class Person extends Animal {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `implements` keyword. Classes can implement multiple classes.

```dart
class Person implements Animal, Human {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `with` keyword. Classes can implement multiple classes.

```dart
class Person with Animal, Human {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `mixin` keyword. Classes can implement multiple classes.

```dart
mixin Person on Animal, Human {
  String name;
  int age;

  Person(this.name, this.age);
}
```

Classes can use the `final` keyword. Final classes cannot be extended.

```dart
final class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
```
''';

// Extensions
  static const String extensions = '''
# Extensions

Extensions are used to add methods to existing classes.

```dart
extension StringExtension on String {
  String capitalize() {
    return '\${this[0].toUpperCase()}\${this.substring(1)}';
  }
}
```

Extensions can be used on existing classes.

```dart
void main() {
  print('john'.capitalize()); // John
}
```

# When to use extensions?

Extensions should be used when you want to add methods to existing classes, but you don't want to extend the class.

# When not to use extensions?

Extensions should not be used when you want to add methods to existing classes, but you want to extend the class.
''';
}
