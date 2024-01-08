# Layout

Widgets that are responsible for arranging and positioning other widgets within the user interface.

- [Layout](#layout)
  - [Center](#center)
  - [Padding](#padding)
  - [Expanded](#expanded)
  - [double.infinity](#doubleinfinity)
  - [Scrollable Widgets](#scrollable-widgets)
    - [SingleChildScrollView](#singlechildscrollview)
    - [ListView](#listview)
    - [GridView](#gridview)
  - [Dismissible](#dismissible)
  - [LayoutBuilder](#layoutbuilder)

## Center

The ***Center*** widget is a layout widget that centers its child within itself. It's commonly used to center content horizontally and vertically within a parent widget.

## Padding

In Flutter, the 'Padding' widget is used to apply padding to its child widget. Padding is the space between the edges of a widget and its content. The 'Padding' widget allows you to add space around a widget, adjusting its position within its parent widget.

## Expanded

This widget is used to give a child widget the flexibility to occupy all available space along the main axis with a parent widget that uses a flex-based layout such as 'Column' or 'Row'

## double.infinity

When double.infinity is used either as the height or the width, it essentially instructs flutter to use the maximum number of pixels available.

## Scrollable Widgets

Scrollable widgets are a family of widgets that enable scrolling behavior allowing users to view content that extends beyond the visible area of the screen. These widgets are crucial for handling scenarios where the available space is not sufficient to display all content, and users need to scroll to see more.

### SingleChildScrollView

This widget is used to create a scrollable view containing a single child. it allows the child to be scrolled if its content exceeds the dimensions of the viewport.

### ListView

The ListView widget is a scrollable list of widgets arranged linearly. It allows the creation of a scrolling list of widgets, where each item in the list is represented by a widget. The 'ListView' is a versatile and commonly used widget for displaying a collection of items that can be scrolled vertically or horizontally.

One of the great benefits of using ListView is that it uses *Lazy View*. In other words, only the widgets that are currently visible on the screen are rendered, improving performance for large lists. One other feature is the *Builder Pattern*, this feature allows the usage of this feature for long lists with the 'ListView.builder' constructor.

### GridView

In Flutter '**GridView**' is a widget that creates a scrollable, two-dimensional array of widgets. It's commonly used to display a grid of items, where each item can be customized and arranged in rows and columns. The items within a 'GridView' can be anything from simple text to complex custom widgets. The items in this widget can be anything from simple text widgets to complex custom ones.

One common use for this widget is creating thing such as category selects for apps. 

GridView resembles the [ListView widget](/TEXT_FILES/WIDGETS/catalog/layout.md#listview), given that both widgets are scrollable, both use the builder pattern (items are generated on-demand as the user scrolls, typically achieved using the 'itemBuilder' property), and both use silvers (portions of scrollable area that can change dynamically based on scrolling).

This widget requires a so called 'gridDelegate', it is responsible for controlling the layout for the GridView. One of the delegates that can be used is the 'SilverGridDelegateWithFixedCrossAxisCount'. It basically creates a grid with a fixed number of cross-axis spacing and main-axis spacing between items.

This delegate accepts some parameters:

- crossAxisCount: this parameter determines the amount of columns that the delegate will create.

- mainAxisSpacing: mainAxisSpacing defines the space between the items in the main axis.

- crossAxisSpacing: this parameter determines the space between the columns.

## Dismissible

In flutter the 'Dismissible' widget is used to make its child widget dismissible by swiping it horizontally. It's commonly used in scenarios where you have a list of items, and you want users to be able to swipe an item to trigger some action, such as deletion.

## LayoutBuilder

This widget is an utility widget that provides information about the constraints that its child widget has within its parent's layout. It allows the creation of a widget whose size or layout depends on the constraints provided by its parent.

The **LayoutBuilder** takes a callback function as its child, and this function receives a **BuildContext** and a **BoxConstraints** object as parameters. The **BoxConstraints** object represents the minimum and maximum height and width that the child can occupy.

The **LayoutBuilder** is particularly useful when you need to create widgets whose layout depends on the constraints imposed by their parent widgets. It allows the creation of more flexible and responsive layouts within the constraints provided by the parent.