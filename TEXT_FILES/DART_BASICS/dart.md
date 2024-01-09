# Dart Basics

Dart is a programming language developed by Google and designed by Lars Bak and Kasper Lund. It's main purpose is web and mobile apps applications. It isn't restricted to that, it can also be used to program server and desktop applications.

Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. It can compile to machine code, JavaScript, or WebAssembly. It supports interfaces, mixins, abstract classes, reified generics and type inference.

- [Dart Basics](#dart-basics)
  - [From Dart to Machine Code](#from-dart-to-machine-code)
  - [Trailing comma](#trailing-comma)
  - [Understanding types](#understanding-types)
  - [Formatting](#formatting)
  - [const, final and var](#const-final-and-var)
    - ["const" Values](#const-values)
    - ["final" Values](#final-values)
    - ["var" Values](#var-values)
  - [Importing Features From Packages](#importing-features-from-packages)
  - [Context](#context)
  - [Futures](#futures)
    - [async \& await](#async--await)
  - [Dart Functions](#dart-functions)
  - [Lists](#lists)
  - [Operators](#operators)
    - [Spread (...)](#spread-)
    - [Null-aware (?)](#null-aware-)
      - [Conditional Access (?.)](#conditional-access-)
      - [Conditional Assignment](#conditional-assignment)
      - [Conditional Access with Assignment (??=)](#conditional-access-with-assignment-)
    - [Postfix exclamation mark (!)](#postfix-exclamation-mark-)
  - [Enum](#enum)

## From Dart to Machine Code

Dart code isn't natively compiled and interpreted by iOS, Android, Web, etc. Instead, Dart *parses the code from top to bottom when running a project for a targeted platform. After parsing the code, Dart and Flutter tools compile the code into native iOS and Android machine code that is then executed on the targeted platform.

(*parse: analyzing and converting a program into an internal format that a runtime environment can actually run)

## Trailing comma

When writing flutter code, every time a parenthesis is closed, it is a good practice to place a trailing comma.

A trailing comma is when a comma is put after the end of an argument. This is done so that it is easier to add code later. In the case of flutter, this is done so that the formatting of the file can be done by the code editor, making the code more readable.

Before:

<p align="center">
    <img src = "./images/image_1.png"/>
</p>

After:

<p align="center">
    <img src = "./images/image_2.png"/>
</p>

## Understanding types

Flutter like other programming languages is a type-safe language. All values are of certain types, more than one type is possible and common. In flutter, all values are at least of type Object.

Types can be built in, provided by flutter, third party, imported by packages, or custom types, created by the dev.

## Formatting

When writing in Dart, ***PascalCase*** should be prioritized, when using names with two words for naming classes. When naming other variables ***camelCase*** should be used.

```Dart
PascalCase

camelCase
```

Words in this format should not be separated with whitespace or underscore, instead, we start every word inside a name with a capital letter.

Another formatting standard that should be followed is how to name objects. When naming an object, the intention should be, making it as clear as possible what that object does.

## const, final and var

There are two keyword that indicate the immutability of a code, ***const*** and ***final***. The difference between the two is that const is more restrictive and is used for compile-time constant whereas finalis used for values that might be determined at runtime, but won't change after initialization. Final allows for more flexibility in terms of when and how the value is determined, making it suitable for a wider range of use cases compared to const.

When using a final value in objects like lists, there are ways of adding values to the list. This happens because the value in-memory does not change, the list is still the same, with the only difference being the additional value. This wouldn't work if a whole new list was to be assigned to the variable. This behavior does not apply to the const keyword, that makes the values completely immutable. On the other hand, the var keywords allows both of the types of assignment.

### "const" Values

***const*** is a keyword built into the Dart language that helps optimizing runtime performance. It does so because it prevents the reallocation of memory for a piece of code that doesn't change.

When a variable is declared in a programming language, it's value is stored in the memory of the computer. When the code accesses that bit of code again, it usually allocates another part of the computer's memory for that code. When we use the "const" keyword, it stops the computer from allocating another part of the memory for the code that follows it.

### "final" Values

In Dart, the ***final*** keyword is used to declare that can be assigned a value only once. Once a value is assigned to a ***final*** variable, it cannot be changed. This keyword is often used for constants, configuration values, or variables that should not e reassigned during the runtime of the program.

### "var" Values

In Dart, the **var** keyword is used to declare a variable without explicitly specifying its type. Instead, the type of the variable is inferred from the type of the assigned value. Dart is statically-typed language, meaning that variable types are known at compile-time. However, Dart's type inference system allows you to use the **var** when the type can be determined without explicit declaration.

## Importing Features From Packages

Packages likewise functions are a baseline of programming. Packages are namespaces that organize a set of related classes and/or interfaces. Importing a package allows the usage of functions and classes that are not native to the code, it can also be used to use third party functions and classes.

```Dart
import 'package:flutter/material.Dart';

int main(){
    runApp({widget_name});
}
```

For instance, to run the ***runApp()*** function mentioned above, we first need to import the *'material.Dart'* file from *'packages:flutter/'*.

## Context

When creating Dart classes it is easy to come across the *context* keyword. This keyword refers to the 'BuildContext' object, which is a crucial part of Flutter. The 'BuildContext' object represents the location of a widget within the widget tree. It is used to obtain information about the location of the widget in the widget tree and to perform tasks related to the widget's position in the hierarchy. Every widget in Flutter is associated with a BuildContext.

## Futures

In Dart, a 'Future' represents a value or error that will be available at some time in the future. It is a core part of Dart's asynchronous programming model, which allows you to perform non-blocking operations, such as fetching data from a network, reading files, or executing time-consuming computations, without blocking the execution of the program.

A 'Future' can be completed with a value or an error using the 'complete' or 'completeError' methods, respectively. The 'then' method can be used to attach callbacks that will be invoked when the Future completes, whether with a value or an error.

### async & await

Dart's 'async' and 'await' keywords are often used in conjunction with 'Future' to simplify asynchronous code and make it more readable. 'async' functions return a 'Future' and 'await' is used to wait for a 'Future' to complete without blocking the program's execution.

## Dart Functions

There is a key instruction needed to start programming flutter apps:

```Dart
runApp();
```

The code above consists of a function. The usage of functions is a baseline of programming, they are instructions, packed as a unit, that perform a specific task. A way of thinking of functions is *code on demand*.

The ***runApp()*** function is provided by the flutter framework, and it is used to primarily show user interface on the screen.

## Lists

Dunno where I'm gonna put this (maybe do a list thingy in dart.md file)

In Dart, a list is an ordered collection of elements, where each element can be of any data type, including numbers, strings, and even other lists. Lists in Dart are implemented through the use of the '*List*' class.

```dart
List myList = [1, 'Hello, world', true];
```

Lists can be created using the List class as a type. Lists can be limited as to which type of argument they can contain by naming the type in angled brackets like so ```List<*>``` (* represents the desired type). Like other programming languages, Dart is zero-based index, meaning when accessing the indexes of lists the first element is located in position 0.

```dart
List <int> numbersList = [1, 2, 3, 4, 5];
List <String> stringList = ['hi', 'hello', 'good morning'];
List <bool> boolList = [true, false, null];
```

Modifying a list can be done in a couple of ways. The List class has a lot of methods to help with this issue, most notably the '.add()' and the '.remove()'. A list's value can be updated like any other variable, this can be done through a specific index, or by assigning the list a new list altogether.

```dart
numbersList.add(6); // Adds the number 6 at the end of the list [1, 2, 3, 4, 5, 6]
numbersList.remove(5);  // Removes the number 5 [1, 2, 3, 4, 6]
numbersList[4] = 5; // Changes the value of the 5th item on the list to 5 [1, 2, 3, 4, 5]
numbersList = [7, 8, 9, 10];  // Changes the value of the list altogether

print(numbersList); // Prints [7, 8, 9, 10]
```

The List class has other commonly used methods. Like .length, that returns the size of the list, .isEmpty that returns a bool of true or false depending if the list is empty, .contains(), that receives an element as parameter and returns a bool in case the element is on the list, .indexOf(), that returns the index of the element it receives as a parameter, and .where() that filters the items according to the function it receives as argument.

```dart
print(numbersList.length); // 4
print(numbersList.isEmpty); // false
print(numbersList.contains(7)); // true
print(numbersList.indexOf(9)); // 2
print(numbersList.where((number) => number > 7).toList());  // 8, 9, 10
```

## Operators

Dart like any other programming language has a set of operators of its own. Here are some of the most notable ones.

### Spread (...)

... or spread, is a convenient syntax feature that allows the easy unpacking of the elements in a collection (lists and sets) or the key-value pair of a map into another collection or function call. The spread operator is useful for combining or spreading the contents of one iterable into another:

```Dart
List<int> list1 = [1, 2, 3];
List<int> list2 = [list1, 4, 5]; //[[1, 2, 3], 4, 5]
List<int> list3 = [...list1, 4, 5]; //[1, 2, 3, 4, 5]
```

### Null-aware (?)

In Dart the '?' operator is used for null-aware operations, and it is often referred to as the "null-aware" or the "null-safe" operator. It helps handle cases where a variable might be 'null' and allows you to perform operations only when the variable is non-null.

There are several contexts in which the '?' operator is used:

#### Conditional Access (?.)

This operator allows you to call a method or access a property on an object only if the object is non-null. If the object is 'null', the entire expression evaluates to 'null.

```Dart
String? name; //Nullable string

int? length = name?.length;
```

In this case, if name is null length will be null, otherwise, it's the length of the string.

#### Conditional Assignment

The '??' operator is the null-aware coalescing operator. It returns the right-hand operand when the left-hand operand is 'null'. Otherwise, it returns the left-hand operand.

```dart
String? name;
String nonNullableName = name ?? 'Default';
```

In this case, if name is null, nonNullableName is 'Default'.

#### Conditional Access with Assignment (??=)

The '??=' is a combination of the null-aware assignment (??) and assignment (=) operators. It assigns the value on the right to the variable on the left only if the variable on the left is 'null'.

```dart
String? name;
name ??= 'Default';
```

In this case, if name is null, assign 'Default' to name.

### Postfix exclamation mark (!)

In Dart, the '!' operator is known as the "bang" or "postfix exclamation mark" operator, and it is used for null assertion. This operator is used to assert that a variable with a nullable type is non-null at a particular point in the code. When used after a nullable variable, the Dart compiler understands that the variable is non-null.

It is important to use the '!' operator with caution, and it's generally recommended to use it only when absolutely certain that the variable is non-null at the point where it's used. Otherwise it can lead to runtime errors and null pointer exceptions. The use of null-aware operators ('?.', '??', '??=') and explicit null checks is often preferred for safer and more predictable code. The '!' operator is particularly useful in scenarios where the developer has additional information or context that ensures non-nullness.

## Enum

In Dart, an enumeration (enum) is a way to represent a fixed set of values as distinct named constants. Enumerations provide a way to define named values for a type, making the code more readable and expressive. Enumerations are commonly used to represent a set of related values or options.

```Dart
enum Color {
    red, 
    green,
    blue,
    yellow,
}
```

Dart enums are zero-indexed, so 'Color.red' has index 0, 'Color.green' has index 1 and so on. They are particularly useful when there is a fixed set of related values that are meant to be used together, and they help make the code more readable and maintainable.
