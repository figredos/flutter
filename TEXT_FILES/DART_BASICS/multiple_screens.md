# Multiple Screens

A quintessential part of apps are multiple screens. There are many ways of building multiple screens in a flutter app. But one of the most simple ways involves the use of rendering content conditionally and lifting state up.

These are two common concepts related to managing the state of a widget tree.

## Rendering content conditionally

Rendering content conditionally refers to the practice of displaying content or UI elements based on certain conditions or states within your Flutter application. This can be achieved using conditional statements to determine which widgets should be included in the widget tree based on the current state of the application.

## Lifting state up

Lifting state up is a pattern in Flutter were the responsibility for managing the state of a widget is moved to a higher-level widget in the widget tree. This is done to share the sate among multiple widgets. When a piece of state is lifted up, it means that the state is managed by a common ancestor widget, and its value is passed down to the child widgets that need access to that state.
