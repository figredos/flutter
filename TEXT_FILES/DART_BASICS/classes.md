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
      - [.push()](#push)
      - [.pushReplacement](#pushreplacement)
      - [.pop](#pop)
      - [WillPopScope](#willpopscope)
      - [Navigator Stack](#navigator-stack)
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

Another way of navigating through screens is using the Navigator class. The Navigator is responsible for managing a "stack" of routes os screens in a Flutter application. It facilitates navigation between different screens, allowing users to move forward and backward through the app's UI hierarchy.

The Navigator class does not require a State to be reset in order to change screens, making it possible to use this class in StateLess Widgets.

Navigator functions as a stack, so when a new Screen is pushed, the Navigator class stacks that screen and when it pops it removes the top-most screen from the stack. The top-most screen is the one that is visible to the user, with the other ones are partially visible, if at all.

#### .push()

This method is used to push a Screen onto the stack. When used, the main screen shows the top-most screen, in this case the one passed as a **route**. ```.push()``` requires the *context* and requires the previously mentioned route. Routes represent screens or pages on the app. Each route is associated with a widget that defines the content and behavior of that screen.

```dart
Navigator.push(context, builder);
// or
Navigator.of(context).push(builder);
```

The route receives as an argument a **MaterialPageRoute** object. This type of object is responsible for building the route passed as argument to Navigator. It receives a builder that returns the widget to be used as a screen.

It is important to note that in Stateless *Widgets*, the **context** is not globally available.

#### .pushReplacement

Navigation in Flutter works with a stack of screens (at least with the Navigator class). And it isn't always the best choice to keep on pushing more and more screens onto that stack. Flutter provides a solution, the **.pushReplacement** method.

This method takes a route, and instead of pushing it onto the stack, it replaces the current route entirely. This means that users cannot navigate back to the previous screen using the back button or gesture because the previous screen is no longer part of the navigation stack.

#### .pop

You can "pop" the current route off the stack to go back to the previous screen.

#### WillPopScope

This is a utility widget that is used to intercept the back button press on the system's back navigation. It allows actions to be performed or show dialogs before actually popping a route from the navigation stack.

The WillPopScope requires a 'onWillPop' parameter. This parameter sets a callback function, that in turn returns a ```Future<bool>``` in a callback function. A good way to deal with this Future object is with the use of the async and await keywords.

#### Navigator Stack

The 'Navigator' maintains a stack of routes. When you push a new route onto the stack, it becomes the active route, and users can navigate back to the previous routes by popping them off the stack.

#### Named routes

Routes can be given names, making it easier to navigate to specific screens using a consistent identifier. This is not recommended.
