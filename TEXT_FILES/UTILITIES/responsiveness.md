# Responsiveness

Responsiveness, in the context of software development and user interfaces, refers to the ability of a system, application, or interface to adapt and provide a seamless user experience across various devices, screen sizes, and resolutions. A responsive design ensures that the user interface remains visually appealing, functional and easy to use regardless of the device on which it is accessed.

- [Responsiveness](#responsiveness)
  - [Locking the device's orientation](#locking-the-devices-orientation)
  - [Updating the UI based on the available space](#updating-the-ui-based-on-the-available-space)
  - [Understanding size constraints](#understanding-size-constraints)
  - [Handling screen overlays](#handling-screen-overlays)
  - [Understanding safe areas](#understanding-safe-areas)
  - [Building adaptive widgets](#building-adaptive-widgets)

## Locking the device's orientation

One important part of adding responsiveness to apps is to lock the device's orientation. This is specially a problem when it comes to flutter apps, because if the widgets are not properly configured to be in different orientations, this can cause serious accessibility problems. To do this, the following code should be added to the body of the main function:

```dart
import 'package:flutter/services.dart';

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {});
```

One important thing about the code above, is that it produces a ***Future*** object, so it's necessary to add a '**.then()**' function to the end. More about futures in [here](../DART_BASICS/dart.md#futures).

## Updating the UI based on the available space

Another thing to do in order to improve an apps responsiveness, is to update the UI based on the available space for the app, depending on specific device sizes. To do so, firstly we need to find the measurements of the device the app is running on, this can be done using ```MediaQuery.of(context).size.(...)``` (substituting the "..." with the desired measurement).

## Understanding size constraints

Size constraints are a really important concept in Flutter. Simply put, size constraints refer to limitations or specifications on the dimensions (width and height) of widgets within a user interface.

These constraints are crucial for defining how widgets should be sized and positioned within the layout. Size constraints are often defined by the parent widget and can be influenced by various factors, including the available space, content requirements, and layout rules.

Using widgets inside each other may sometimes result in unexpected errors specially when used inside of a row. This happens because widgets get sized based on their size preferences and parent widget size constraints. A simple and effective way of solving this problem is by wrapping the problematic widget with the [Expanded widget](../WIDGETS/catalog/structural_layout.md#expanded).

## Handling screen overlays

One other common problem found when building flutter apps, are screen overlays. This problem may occur when something like a keyboard overlaps an input field, or whenever two screens or widgets overlap each other, in a way that one or both of them function properly.

To find the overlapping space, Flutter provides ```MediaQuery.of().viewInsets.(...)``` (like before substitute the "..." with the desired measurement). This function returns the space used by something that is overlapping the screen.

A good way of dealing with these issues is to save the value return by the code above inside a variable, and use this variable to set the value for the insets (like .viewInsets.bottom to find the size of the overlapping in the bottom of the screen). To finalize the setup, wrap the main column or row widget in a **SingleChildScrollView** widget, to allow scrolling.
  
## Understanding safe areas

Safe areas are parts of the device's features that overlap the screen. This can include the camera for some android phones, or the dynamic island for the iphone.

Dealing with safe areas can be done for individual widgets, but in the case of the **Scaffold** and **Column** widgets it is done automatically. This doesn't mean that these settings can't be adjusted, it can, by using the '**useSafeAreas**' parameter.  

## Building adaptive widgets
  
Although Flutter allows one code to be used in more than one platform, there are also some settings that allow the app to be optimized for the device it is running on. There are cases in which you want to create a feel that represents the specific platform that the app is running on.

Some of the optimizations that can be done are using platform specific UI, platform specific assets, or even platform specific code execution.

```Platform.(...)``` (substituting "..." by the desired platform) can be used to check the current platform the code is running on.

```dart
import 'dart:io';

void main() {
  if (Platform.isIOS) {
    // IOS-specific code
  }
  else {
    // Android-specific code
  }
}
```
