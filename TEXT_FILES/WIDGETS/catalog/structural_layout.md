# Structural / Layout Widgets

Widgets that perform Structural and Layout in Flutter.

- [Structural / Layout Widgets](#structural--layout-widgets)
  - [Structural](#structural)
    - [Scaffold](#scaffold)
    - [Column](#column)
    - [Row](#row)
    - [Card](#card)
    - [Spacer](#spacer)
    - [Container](#container)
    - [SizedBox](#sizedbox)
  - [Layout](#layout)
    - [Center](#center)
    - [Padding](#padding)
    - [Expanded](#expanded)
      - [double.infinity](#doubleinfinity)
    - [Scrollable Widgets](#scrollable-widgets)
      - [SingleChildScrollView](#singlechildscrollview)
      - [ListView](#listview)
      - [Dismissible](#dismissible)

## Structural

### Scaffold

The ***Scaffold*** widget is a basic structure that provides a visual framework for building the app's user interface.

It represents the basic material design visual structure of the app, including the app bar, the body of the app and other structural elements.

The Scaffold widget serves as a container for other widgets and provides a convenient way to organize the visual elements of the app.

### Column

The column widget is used to arrange its children widgets vertically in a single column. Ut is part of the layout widgets in Flutter, and is commonly used to create vertical arrangements of widgets, such as lists, forms, or any vertically stacked content.

### Row

This Widget is used to arrange its children widgets horizontally in a single row. It is part of the layout widgets and is commonly used when you want to create a horizontal arrangement of widgets, such as buttons, text or other elements.

### Card

The card widget is used to create a material design card, which is a surface with a shadow to represent each piece of content. It's commonly used to present information in a visually appealing and organized way.

### Spacer

Spacer is used to create empty space within a Flex container (such as a 'Row' or 'Column') to distribute the available space among its children. This widget is especially useful for creating flexible layouts where you want to allocate space proportionally between widgets.

### Container

This is a basic layout element that can contain other widgets and provide various visual customization options. ***Container*** can be used to create basic or complex layouts.

### SizedBox

The main purpose of SizedBox is to control the size (width, height) of its child widget, or to create space within a layout.

## Layout

### Center

The ***Center*** widget is a layout widget that centers its child within itself. It's commonly used to center content horizontally and vertically within a parent widget.

### Padding

In Flutter, the 'Padding' widget is used to apply padding to its child widget. Padding is the space between the edges of a widget and its content. The 'Padding' widget allows you to add space around a widget, adjusting its position within its parent widget.

### Expanded

This widget is used to give a child widget the flexibility to occupy all available space along the main axis with a parent widget that uses a flex-based layout such as 'Column' or 'Row'

#### double.infinity

When double.infinity is used either as the height or the width, it essentially instructs flutter to use the maximum number of pixels available.

### Scrollable Widgets

Scrollable widgets are a family of widgets that enable scrolling behavior allowing users to view content that extends beyond the visible area of the screen. These widgets are crucial for handling scenarios where the available space is not sufficient to display all content, and users need to scroll to see more.

#### SingleChildScrollView

This widget is used to create a scrollable view containing a single child. it allows the child to be scrolled if its content exceeds the dimensions of the viewport.

#### ListView

The ListView widget is a scrollable list of widgets arranged linearly. It allows the creation of a scrolling list of widgets, where each item in the list is represented by a widget. The 'ListView' is a versatile and commonly used widget for displaying a collection of items that can be scrolled vertically or horizontally.

One of the great benefits of using ListView is that it uses *Lazy View*. In other words, only the widgets that are currently visible on the screen are rendered, improving performance for large lists. One other feature is the *Builder Pattern*, this feature allows the usage of this feature for long lists with the 'ListView.builder' constructor.

#### Dismissible

In flutter the 'Dismissible' widget is used to make its child widget dismissible by swiping it horizontally. It's commonly used in scenarios where you have a list of items, and you want users to be able to swipe an item to trigger some action, such as deletion.
