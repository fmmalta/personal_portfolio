import 'package:flutter/material.dart';

class PrimitiveDataAndVariables extends StatelessWidget {
  const PrimitiveDataAndVariables({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("""
Dart also allows enum declarations to declare classes with fields, methods, and const constructors which are limited to a fixed number of known constant instances.

To declare an enhanced enum, follow a syntax similar to normal classes, but with a few extra requirements:

Instance variables must be final, including those added by mixins.
All generative constructors must be constant.
Factory constructors can only return one of the fixed, known enum instances.
No other class can be extended as Enum is automatically extended.
There cannot be overrides for index, hashCode, the equality operator ==.
A member named values cannot be declared in an enum, as it would conflict with the automatically generated static values getter.
All instances of the enum must be declared in the beginning of the declaration, and there must be at least one instance declared.
Instance methods in an enhanced enum can use this to reference the current enum value.

Here is an example that declares an enhanced enum with multiple instances, instance variables, getters, and an implemented interface:
""");
  }
}
