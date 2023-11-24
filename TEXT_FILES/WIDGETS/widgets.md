# Widgets

Widgets are the basic structure in Flutter. These structures are basic building blocs of the user interface, and form the fundamental structure of an app.

They are used to construct the visual elements of the app, and can range from simple components to more complex ones.

## Configuring Widgets

Widgets such as ***Scaffold*** and ***Text*** can receive more than one argument. Usually these other arguments are not widgets, like in the aforementioned ***Scaffold*** (can only take one widget as argument). These other arguments are Configurations.

As expected the configuration arguments configure (duh) a plethora of features of a widget. They can be used for simple tasks, such as, changing the background color of a widget.

## Creating a Widget

As previously established, widgets are basic building blocks of a flutter application. They can be built-in or third party, but also, built by the dev.

To create a widget, we use ***class***. Class is a keyword used in a plethora of programming languages that is used to define classes (duh). ***class*** is not the only keyword needed to create a widget, another one used is ***extends***.

***extends*** is used when a class inherits from another one in dart. Whereas in other programming language, more specifically python, we use the parent function's name in parentheses after the child class name:

~~~python
class ChildClass(ParentClass)
    ...
~~~

in dart we use like so:

~~~dart
class ChildClass extends ParentClass{

}
~~~

Once these concepts are understood, we can proceed. We do so by *extending* a class, it can be either [***StatefulWidget*** or ***StateLessWidget***](#statelesswidget-and-statefulwidget) (more on this later). Although there are other ways of creating widgets, using these classes configures one of the most simple ones. For now, let's stick with using ***StateLessWidget***.

***StateLessWidget*** is an \*abstract class and requires the implementation of a method, ***build()***. ***build()*** is where the structure and appearance of the widgets's user interface is defined. It takes a context argument and returns a widget.

To implement the ***build()*** method we need to use ***@override***. This annotation is used to indicate that a method in a subclass is intended to override a method with the same signature from its superclass. In other words, it's a way of explicitly stating that the annotated method is meant to override a method from the superclass.

Lastly, there is only one piece missing. We need to add a [constructor](#constructors) to the class. As an argument we pass a key from the superclass.

~~~dart
class MyWidget extends StateLessWidget{
    MyWidget({super.key});

    widget build(){
        return Widget;
    }
}
~~~

(*abstract classes: classes that work like a blueprint for other classes, forcing the implementation of methods within them)

## Constructors

Constructors are the initializers of the class in dart. Whenever we create a class, and there is a need for values to be passed to the class, we implement a constructor.

~~~dart
class MyClass{
    int data;
    String name;

    //Named arguments data and name
    MyClass({this.data, this.name});
}
~~~

## StateLessWidget and StatefulWidget

***StatefulWidget*** or ***StateLessWidget*** are two fundamental classes used to create user interfaces.

### StateLessWidgets

A ***StateLessWidget*** is a widget that does not change its internal state once it is built. It represents part of the user interface that remains static and does not react to user interactions.

This widget does not have mutable properties or fields, and therefore it has no mutable state. It is also immutable, meaning, once a StateLessWidget is created, its properties cannot be changed.

#### Implementation

As aforementioned, ***StateLessWidget*** are abstract classes, and require the implementation of the ***build()*** method like so:

~~~dart
class MyWidget extends StateLessWidget{
    Widget build(){
        return;
    }
}
~~~

### StateFullWidget

A ***StatefulWidget*** is a widget that can change its internal state during its lifetime. It is used for parts of the user interface that need to be dynamic and respond to user interactions or other events.

StateFulWidgets have a mutable state, with mutable properties or fields that can change over time. It can react to changes in state, such as user input or other events.

#### Implementation

To implement StateFulWidgets, thing get a little bit different. StateFulWidgets are also abstract classes, and unlike the *build()* method required by ***StateLessWidgets***, this widget requires the implementation of the ***createState()*** method. This method returns a *State* object. State is a type built into flutter, and like *list*, this configures a generic type value. Hence we need to add *'<>'* to "inform" flutter what type of State will be managed. In the case of StateFulWidgets, the type of state should be the name of the class. 

~~~dart
class MyClass extends StateFulWidget {
    @override
    State<MyClass> createState(){
        return _MyClassState;
    }
}
~~~

You may have noticed the presence of "***_MyClassState***" as the return widget for the *createState()* method. This is because, besides the structure created above, there is a need to create a Widget that will return the ***State\<MyClass>*** value. This Widget class is a *protected class and it now requires the implementation of the build method.

~~~dart
class MyClass extends StateFulWidget {
    @override
    State<MyClass> createState(){
        return _MyClassState;
    }
}

class _MyClassState extends State<MyClass> {
    @override
    Widget build() {
        return;
    }
}
~~~

Flutter requires both of the structures to implement a ***StateFullWidget***.

## setState()

The ***setState()*** function is a crucial method provided by the *State* class. It is used in ***StateFulWidget*** instances to signal that the internal state of the widget has changed and that the framework should rebuild the widget. 

To update the state of a widget in dart, pass as an argument of the *setState* function, the change to the state.