# Dart Basics

Dart is a programming language developed by Google and designed by Lars Bak and Kasper Lund. It's main purpose is web and mobile apps applications. It isn't restricted to that, it can also be used to program server and desktop applications.

Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. It can compile to machine code, JavaScript, or WebAssembly. It supports interfaces, mixins, abstract classes, reified generics and type inference.

- [Dart Basics](#dart-basics)
  - [From Dart to Machine Code](#from-dart-to-machine-code)
  - [Dart Functions](#dart-functions)
  - [Importing Features From Packages](#importing-features-from-packages)
  - [Widgets](#widgets)
  - [const and final](#const-and-final)
    - ["const" Values](#const-values)
    - ["final" Values](#final-values)
  - [Trailing comma](#trailing-comma)
  - [Understanding types](#understanding-types)
  - [Formatting](#formatting)
  - [Operators](#operators)
    - [Spread (...)](#spread-)
    - [Null-aware (?)](#null-aware-)
      - [Conditional Access (?.)](#conditional-access-)
      - [Conditional Assignment](#conditional-assignment)
      - [Conditional Access with Assignment (??=)](#conditional-access-with-assignment-)
    - [Postfix exclamation mark (!)](#postfix-exclamation-mark-)
  - [Enum](#enum)
  - [Context](#context)
  - [Multiple Screens](#multiple-screens)
    - [Rendering content conditionally](#rendering-content-conditionally)
    - [Lifting state up](#lifting-state-up)
  - [Futures](#futures)
    - [async \& await](#async--await)

## From Dart to Machine Code

Dart code isn't natively compiled and interpreted by iOS, Android, Web, etc. Instead, Dart *parses the code from top to bottom when running a project for a targeted platform. After parsing the code, Dart and Flutter tools compile the code into native iOS and Android machine code that is then executed on the targeted platform.

(*parse: analyzing and converting a program into an internal format that a runtime environment can actually run)

## Dart Functions

There is a key instruction needed to start programming flutter apps:

```Dart
runApp();
```

The code above consists of a function. The usage of functions is a baseline of programming, they are instructions, packed as a unit, that perform a specific task. A way of thinking of functions is *code on demand*.

The ***runApp()*** function is provided by the flutter framework, and it is used to primarily show user interface on the screen.

## Importing Features From Packages

Packages likewise functions are a baseline of programming. Packages are namespaces that organize a set of related classes and/or interfaces. Importing a package allows the usage of functions and classes that are not native to the code, it can also be used to use third party functions and classes.

```Dart
import 'package:flutter/material.Dart';

int main(){
    runApp({widget_name});
}
```

For instance, to run the ***runApp()*** function mentioned above, we first need to import the *'material.Dart'* file from *'packages:flutter/'*.

## Widgets

Flutter is built with Dart, but more specifically, we use Dart to program so called ***widgets***. Widgets are immutable descriptions of part of a user interface.

A flutter app is built using a combination of \*nested flutter widgets, or a ***widget tree***. When using the ***runApp()***, we pass the root of the widget tree as an argument for the function.

Flutter provides many built-in widgets, such as buttons, form inputs, layout widgets, etc. But they can also be built by the dev, using the built-in as a base.

Flutter has a [website](https://docs.flutter.dev/ui/widgets) with a catalog of widgets that are available.

One of the most basic widgets, that will give a visual interface when passed as an argument int the ***runApp()*** function is the ***MaterialApp()***.

```Dart
import 'package:flutter/material.Dart';

int main(){
    runApp(MaterialApp());
}
```

Unlike the function it is being passed to as an argument, the ***MaterialApp()*** is a *class, or a construction function of a class (to be more precise). This is a core widget, that is used in most flutter apps. It does a lot of behind the scenes work for the user interface

(*nested: placed one inside the other)

(*class: classes are a Dart feature that can be used to build more complex data structures - like widgets.)

## const and final

There are two keyword that indicate the immutability of a code, ***const*** and ***final***. The difference between the two is that const is more restrictive and is used for compile-time constant whereas finalis used for values that might be determined at runtime, but won't change after initialization. Final allows for more flexibility in terms of when and how the value is determined, making it suitable for a wider range of use cases compared to const

### "const" Values

***const*** is a keyword built into the Dart language that helps optimizing runtime performance. It does so because it prevents the reallocation of memory for a piece of code that doesn't change.

When a variable is declared in a programming language, it's value is stored in the memory of the computer. When the code accesses that bit of code again, it usually allocates another part of the computer's memory for that code. When we use the "const" keyword, it stops the computer from allocating another part of the memory for the code that follows it.

### "final" Values

In Dart, the ***final*** keyword is used to declare that can be assigned a value only once. Once a value is assigned to a ***final*** variable, it cannot be changed. This keyword is often used for constants, configuration values, or variables that should not e reassigned during the runtime of the program.

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

## Context

When creating Dart classes it is easy to come across the *context* keyword. This keyword refers to the 'BuildContext' object, which is a crucial part of Flutter. The 'BuildContext' object represents the location of a widget within the widget tree. It is used to obtain information about the location of the widget in the widget tree and to perform tasks related to the widget's position in the hierarchy. Every widget in Flutter is associated with a BuildContext.

## Multiple Screens

A quintessential part of apps are multiple screens. There are many ways of building multiple screens in a flutter app. But one of the most simple ways involves the use of rendering content conditionally and lifting state up.

These are two common concepts related to managing the state of a widget tree.

### Rendering content conditionally

Rendering content conditionally refers to the practice of displaying content or UI elements based on certain conditions or states within your Flutter application. This can be achieved using conditional statements to determine which widgets should be included in the widget tree based on the current state of the application.

### Lifting state up

Lifting state up is a pattern in Flutter were the responsibility for managing the state of a widget is moved to a higher-level widget in the widget tree. This is done to share the sate among multiple widgets. When a piece of state is lifted up, it means that the state is managed by a common ancestor widget, and its value is passed down to the child widgets that need access to that state.

## Futures

In Dart, a 'Future' represents a value or error that will be available at some time in the future. It is a core part of Dart's asynchronous programming model, which allows you to perform non-blocking operations, such as fetching data from a network, reading files, or executing time-consuming computations, without blocking the execution of the program.

A 'Future' can be completed with a value or an error using the 'complete' or 'completeError' methods, respectively. The 'then' method can be used to attach callbacks that will be invoked when the Future completes, whether with a value or an error.

### async & await

Dart's 'async' and 'await' keywords are often used in conjunction with 'Future' to simplify asynchronous code and make it more readable. 'async' functions return a 'Future' and 'await' is used to wait for a 'Future' to complete without blocking the program's execution.
