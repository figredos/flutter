# Classes

Dart has a great number of built-in classes. Classes are a fundamental and crucial part aspect of dart, especially when it comes to flutter. Classes are used to define the structure and behavior of objects, encapsulate data and functionality, and enable the principles of object-oriented programming (OPP).

In this file, you can find implementations of basic feature using Dart classes, as well as some of the most notable Dart classes.

- [Classes](#classes)
  - [Getters \& Setters](#getters--setters)
    - [Getters](#getters)
    - [Setters](#setters)
  - [Most notable dart classes](#most-notable-dart-classes)
    - [TextEditingController](#texteditingcontroller)
    - [Navigator](#navigator)
      - [Route](#route)
      - [Navigator Stack](#navigator-stack)
      - [Push and Pop](#push-and-pop)
      - [Named routes](#named-routes)

## Getters & Setters

Dart supports the usage of getters and setters.

### Getters

Getters are a way to provide access to the value of an object's property. They are a form of syntactic sugar that allows the definition of a method that looks like a property. The getter method is invoked when the property is accessed.

```dart
class MyClass {
    // Private variable
    String _myProperty;

    // Getter method
    String get myProperty {
        // Additional logic if needed
        return _myProperty;
    }
}

void main() {
    var myObject = MyClass();
    print(myObject.myProperty); // Accessing the getter
}
```

If there is no need for additional logic, there is a shorthand syntax:

```dart
class MyClass {
    String _myProperty;

    String get myProperty => _myProperty;
}
```

### Setters

Setters are used to provide a way to update the value of an object's property. Setters are similar to getters but are used for assigning values rather that retrieving them.

```dart
class MyClass {
    //Private variable
    String _myProperty;

    //Getter method
    String get myProperty => _myProperty;

    // Setter method
    set myProperty(String value) {
        // Additional logic if needed
        _myProperty = value;
    }
}

void main() {
    var myObject = MyClass();

    // Using the setter
    myObject.myProperty = 'New Value';
    print(myObject.myProperty); // Accessing the getter
}
```

Much like getters, setter have shorthand usage if there is no need for additional logic:

```dart
class MyClass {
    String _myProperty;

    String get myProperty => _myProperty;

    String set myProperty(String value) => _myProperty = value;
}
```

## Most notable dart classes

### TextEditingController

What this class does is pretty much what it sound like, it is a controller for an editable text field. It provides an interface for reading and manipulating the text entered by the user in a 'TextField' widget.

When using this class it's good practice to dispose of it when it's no longer needed to free up resources and avoid potential memory leaks. This is especially important when the associated widget (such as a 'StatefulWidget' is disposed of). To do so, you can override the 'dispose' method in your widget's state and call the 'dispose' method of the controller:

```dart
class _MyWidgetState extends State<MyWidget> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed of
    _controller.dispose();
    super.dispose();
  }
}
```

### Navigator

The 'Navigator' is responsible for managing a stack of "routes" or "screens" in your Flutter application. It facilitates navigation between different screens, allowing users to move forward and backward through the app's UI hierarchy. Here are some of the key concepts related to the 'Navigator':

#### Route

A "route" represents a screen or page in the app. Each route is associated with a widget that defines the content and behavior of that screen.

#### Navigator Stack

The 'Navigator' maintains a stack of routes. When you push a new route onto the stack, it becomes the active route, and users can navigate back to the previous routes by popping them off the stack.

#### Push and Pop

You can "push" a new route onto the stack to navigate to a different screen. Conversely, you can "pop" the current route off the stack to go back to the previous screen.

#### Named routes

Routes can be given names, making it easier to navigate to specific screens using a consistent identifier.
