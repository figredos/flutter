# Structural / Layout Widgets

Widgets that perform Structural and Layout in Flutter.

- [Structural / Layout Widgets](#structural--layout-widgets)
  - [Scaffold](#scaffold)
  - [Center](#center)
  - [Column](#column)
  - [Row](#row)
  - [Expanded](#expanded)
  - [Container](#container)
  - [SizedBox](#sizedbox)
    - [double.infinity](#doubleinfinity)
  - [Scrollable Widgets](#scrollable-widgets)
    - [SingleChildScrollView](#singlechildscrollview)
    - [ListView](#listview)

## Scaffold

The ***Scaffold*** widget is a basic structure that provides a visual framework for building the app's user interface.

It represents the basic material design visual structure of the app, including the app bar, the body of the app and other structural elements.

The Scaffold widget serves as a container for other widgets and provides a convenient way to organize the visual elements of the app.

## Center

The ***Center*** widget is a layout widget that centers its child within itself. It's commonly used to center content horizontally and vertically within a parent widget.

## Column

The column widget is used to arrange its children widgets vertically in a single column. Ut is part of the layout widgets in Flutter, and is commonly used to create vertical arrangements of widgets, such as lists, forms, or any vertically stacked content.

## Row

This Widget is used to arrange its children widgets horizontally in a single row. It is part of the layout widgets and is commonly used when you want to create a horizontal arrangement of widgets, such as buttons, text or other elements.

## Expanded

This widget is used to give a child widget the flexibility to occupy all available space along the main axis with a parent widget that uses a flex-based layout such as 'Column' or 'Row'

## Container

This is a basic layout element that can contain other widgets and provide various visual customization options. ***Container*** can be used to create basic or complex layouts.

## SizedBox

The main purpose of SizedBox is to control the size (width, height) of its child widget, or to create space within a layout.

### double.infinity

When double.infinity is used either as the height or the width, it essentially instructs flutter to use the maximum number of pixels available.

## Scrollable Widgets

Scrollable widgets are a family of widgets that enable scrolling behavior allowing users to view content that extends beyond the visible area of the screen. These widgets are crucial for handling scenarios where the available space is not sufficient to display all content, and users need to scroll to see more.

### SingleChildScrollView

This widget is used to create a scrollable view containing a single child. it allows the child to be scrolled if its content exceeds the dimensions of the viewport.

### ListView

The ListView widget is a scrollable list of widgets arranged linearly. It allows the creation of a scrolling list of widgets, where each item in the list is represented by a widget. The 'ListView' is a versatile and commonly used widget for displaying a collection of items that can be scrolled vertically or horizontally.

One of the great benefits of using ListView is that it uses *Lazy View*. In other words, only the widgets that are currently visible on the screen are rendered, improving performance for large lists. One other feature is the *Builder Pattern*, this feature allows the usage of this feature for long lists with the 'ListView.builder' constructor.
