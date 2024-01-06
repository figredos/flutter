# Flutter and Dart internals

This file contains some Flutter and Dart internals.

- [Flutter and Dart internals](#flutter-and-dart-internals)
  - [The Three Trees](#the-three-trees)
  - [Widget Tree](#widget-tree)
  - [Element Tree](#element-tree)
  - [Render Tree](#render-tree)
  - [Avoiding unnecessary builds](#avoiding-unnecessary-builds)
  - [Understanding keys](#understanding-keys)

## The Three Trees

In Flutter there are three main types of trees the **Widget Tree**, **Element Tree**,and the **Render Tree**. They represent the parts of the rendering of the apps UI, with only the Widget tree being visible to the programmer, with the other 2 hidden.

## Widget Tree

This tree is the one built by combining widgets in code, it is the only one that is visible to the programer. The other two are automatically managed by Flutter.

## Element Tree

This tree is the in-memory representation of the widgets, used for determining necessary updates.

## Render Tree

The Render Tree is the visible UI building blocks, updated when determined via tree comparisons. It is not rebuilt always, because it is very expensive and unnecessary. The **build()** method is called very frequently to check for required updates, elements are re-used if possible and only (partially) re-rendered if UI updates are not needed.

## Avoiding unnecessary builds

As mentioned above, the Render Tree is the visible UI building blocks, and its updated when compared to other trees, this comparison may start when rebuilding widgets. When rebuilding widgets, it's important to avoid unnecessary builds, meaning not every widget needs to be rebuilt. A very simple way of doing this, is isolating the widgets that requires a StateFul widget from the widgets that can be managed by using only a StateLess widget.

## Understanding keys

Keys are related to the element tree. Whenever two widgets exchange places, their elements in the element tree don't change place, instead it only changes which widgets it their referring to. But when the State of these widgets is being manages, a problem with switching their place arises. When the widgets switch place, their States don't, they are attached to the widget's element. This is the problem that keys solve.

If keys are added to widgets, their state receives the same keys, meaning when they move, if the keys don't match, Flutter updates the keys and State are updated accordingly. Keys  work as id's to widgets, allowing Flutter to match elements to widgets.

There are two types of keys that can be used to use in widgets, the **ValueKey()** and the **ObjectKey()**:

```dart
// Value keys can only be assigned numeric types
var valueKey1 = ValueKey(1);
var valueKey2 = ValueKey(42);

// Object keys can be assigned non-numerics and custom objects
var objectKey1 = ObjectKey('Example String');
var objectKey2 = ObjectKey(42);
var objectKey3 = ObjectKey(CustomObject());
```
