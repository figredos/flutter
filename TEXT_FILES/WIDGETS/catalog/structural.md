# Structural Widgets

Widgets that perform Structural and Layout in Flutter.

- [Structural Widgets](#structural-widgets)
  - [Scaffold](#scaffold)
  - [Column](#column)
  - [Row](#row)
  - [Card](#card)
  - [Spacer](#spacer)
  - [Container](#container)
  - [SizedBox](#sizedbox)
  - [GestureDetector](#gesturedetector)
  - [InkWell](#inkwell)

## Scaffold

The ***Scaffold*** widget is a basic structure that provides a visual framework for building the app's user interface.

It represents the basic material design visual structure of the app, including the app bar, the body of the app and other structural elements.

The Scaffold widget serves as a container for other widgets and provides a convenient way to organize the visual elements of the app.

When building multiple screens in a flutter app, the Scaffold widget is essential. The likelihood of using this widget to do the base screen setup in the different screens is very high.

## Column

The column widget is used to arrange its children widgets vertically in a single column. Ut is part of the layout widgets in Flutter, and is commonly used to create vertical arrangements of widgets, such as lists, forms, or any vertically stacked content.

## Row

This Widget is used to arrange its children widgets horizontally in a single row. It is part of the layout widgets and is commonly used when you want to create a horizontal arrangement of widgets, such as buttons, text or other elements.

## Card

The card widget is used to create a material design card, which is a surface with a shadow to represent each piece of content. It's commonly used to present information in a visually appealing and organized way.

## Spacer

Spacer is used to create empty space within a Flex container (such as a 'Row' or 'Column') to distribute the available space among its children. This widget is especially useful for creating flexible layouts where you want to allocate space proportionally between widgets.

## Container

This is a basic layout element that can contain other widgets and provide various visual customization options. ***Container*** can be used to create basic or complex layouts.

## SizedBox

The main purpose of SizedBox is to control the size (width, height) of its child widget, or to create space within a layout.

## GestureDetector

The GestureDetector widget is a versatile widget that can recognize a variety of gestures and allows the attachment of callbacks to these gestures. It wraps around a single child widget and detects gestures performed on that child.

## InkWell

InkWell is a widget built on top of [GestureDetector](#gesturedetector) and provides additional visual feedback in the form of an ink splash when the user interacts with it. It's often used when a visual response is needed, such as a ripple effect, when the user taps on a widget.
