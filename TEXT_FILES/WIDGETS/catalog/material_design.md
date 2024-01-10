# Material Design Widgets

Material design is a design Language created by Google that provides guidelines and principles for designing user interfaces. It emphasizes a tactile and realistic look, inspired by the properties of paper and ink. Material design includes specifications for the layout, color, typography, motion, and interactive elements of an application.

- [Material Design Widgets](#material-design-widgets)
  - [MaterialApp](#materialapp)
  - [AppBar](#appbar)
  - [BottomNavigationBar](#bottomnavigationbar)
  - [Button Widgets](#button-widgets)
    - [ElevatedButtons](#elevatedbuttons)
    - [TextButton](#textbutton)
    - [OutlinedButton](#outlinedbutton)
    - [IconButton](#iconbutton)
    - [FloatingActionButton](#floatingactionbutton)
    - [DropdownButton](#dropdownbutton)
  - [TextField](#textfield)
    - [maxLength](#maxlength)
    - [controller](#controller)
    - [keyboardType](#keyboardtype)
    - [textInputAction](#textinputaction)
    - [onChanged](#onchanged)
    - [onSubmitted](#onsubmitted)
    - [obscureText](#obscuretext)
  - [SnackBar](#snackbar)

## MaterialApp

The ***MaterialApp*** widget is a fundamental component that sets up the basic structure aof a Material Design-themed application. It provides a wrapper for the entire app, and includes configurations for various aspects of the app, such as navigation, theming and title.

## AppBar

AppBar is a Material Design widget that represents the app bar at the top of the screen.It is commonly used to display the title of the current screen, as well as optional actions, icons, and navigation-related components. The 'AppBar' is part of the scaffold structure and is typically used within the [Scaffold](structural_layout.md#scaffold) widget.

The AppBar is positioned at the top of the screen by default. It provides a consistent and visually prominent space for key information and actions. It includes a title that can be specified to represent the name or purpose of the current screen. It allows the inclusion of various actions in it, such as icons, buttons, or menu items. These actions are often used for common tasks or navigation.

It often includes a leading widget on the left side, which is often used for a back button or navigation icon. The 'AppBar' can also have a bottom section where additional tabs or other widgets can be placed.

## BottomNavigationBar

The BottomNavigationBar is a Flutter widget that is typically used as a navigation bar at the bottom of the screen in a mobile application. It provides a way to switch between different sections or views of the app, often associated with different tabs or pages. The BottomNavigationBar is commonly used within a [Scaffold](structural.md) widget to structure the overall layout of the app.

This widget is a common UI element in mobile apps, allowing users to navigate between different sections of the app easily. It's often paired with a TabBarView or similar widgets to manage the content associated with each tab. It is set in the Scaffold widget by using the parameter '*bottomNavigationBar*'.

This parameter receives an argument of type BottomNavigationBar. This in turn receives two major parameters, onTap, that sets the behavior when interacted with, items that receives objects of a BottomNavigationBarItem class (that receives an icon and a label), and currentIndex, that highlights the active tab.

## Button Widgets

Flutter provides flexibility to customize button widgets based on design requirements. They can have different appearances and behaviors based on the adjustment of properties and using the combination with other widgets and layouts. Here are a few examples of the widgets provided by flutter.

### ElevatedButtons

This is a material design raised button. It has a container around the child widget, providing a visually elevated effect.

### TextButton

This is a material design button with no elevation. It is often used for less prominent actions.

### OutlinedButton

This is a material design outlined button. It has a border and does not have an elevation.

### IconButton

This is a button that consists only of an icon. It is often used that are represented by icons.

### FloatingActionButton

This is a circular material design button typically used for the primary action in an application.

### DropdownButton

This is a widget used to create a dropdown menu with a list of items. It's a common UI pattern for selecting an item from a list of options.

## TextField

The 'TextField' widget is used to create a text input field, allowing users to enter and edit text. It's a fundamental building block for gathering user input in forms and interacting with text-based data in applications.

Bellow there are some of the most useful parameters in 'TextField':

### maxLength

The maximum number of characters allowed for the text input.

### controller

Controls the text being edited. This allows you to read or manipulate the text input programmatically. This parameter requires the usage of the ['TextEditingController' class](../../DART_BASICS/classes.md#texteditingcontroller).

### keyboardType

The type of keyboard to display such as text, number, email, phone, etc. This influences the layout and functionality of the on-screen keyboard.

### textInputAction

The action button on the keyboard, which determines the action that will be triggered when pressed.

### onChanged

A callback function that is invoked whenever the text input changes. It provides the updated text as an argument.

### onSubmitted

A callback function that is invoked when the user submits the text input.

### obscureText

A boolean that determines wether the entered text should be obscured, typically used for password input.

## SnackBar

The SnackBar widget is a component used to display short-duration messages or notifications to the user. It is typically used to provide feedback about a completed action, an error, or any other transient information that doesn't require a dedication screen. Some of the key-points of the SnackBar are as follow:

- **Content property**: where a text (not the Text widget, just a plain string) or widget to be displayed in the message.

- **Duration**: this property specifies how long the SnackBar should be visible on the screen before automatically dismissing itself.

- **ScaffoldMessenger.of().showSnackBar()**: this is a method used inside a Scaffold widget that shows the SnackBar.

- **ScaffoldMessenger.of().clearSnackBar()**: this is a method used inside a Scaffold widget that clears the SnackBar from the screen.
