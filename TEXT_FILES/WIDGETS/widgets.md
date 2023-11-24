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

Once these concepts are understood, we can proceed. We do so by *extending* a class, it can be either [***StatefulWidget*** or ***StateLessWidget***](#statelesswidget-and-Statefulwidget) (more on this later). Although there are other ways of creating widgets, using these classes configures one of the most simple ones. For now, let's stick with using ***StateLessWidget***.

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

