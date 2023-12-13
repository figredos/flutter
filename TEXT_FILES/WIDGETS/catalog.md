# Widget Catalog

A summary of the most common widgets, their uses and some commentary.

[Structural / Layout Widgets](#structural--layout-widgets)

[Text and Styling Widgets](#text-and-styling-widgets)

[Material Design Widgets](#material-design-widgets)

[Image related Widgets](#image-related-widgets)

[Button Widgets](#button-widgets)

## Official widget catalog

Flutter provides an [official widget catalog](https://docs.flutter.dev/ui/widgets).

## Structural / Layout Widgets

### Scaffold

The ***Scaffold*** widget is a basic structure that provides a visual framework for building the app's user interface.

It represents the basic material design visual structure of the app, including the app bar, the body of the app and other structural elements.

The Scaffold widget serves as a container for other widgets and provides a convenient way to organize the visual elements of the app.

### Center

The ***Center*** widget is a layout widget that centers its child within itself. It's commonly used to center content horizontally and vertically within a parent widget.

### Column

The column widget is used to arrange its children widgets vertically in a single column. Ut is part of the layout widgets in Flutter, and is commonly used to create vertical arrangements of widgets, such as lists, forms, or any vertically stacked content.

### Row

This Widget is used to arrange its children widgets horizontally in a single row. It is part of the layout widgets and is commonly used when you want to create a horizontal arrangement of widgets, such as buttons, text or other elements.

### Expanded

This widget is used to give a child widget the flexibility to occupy all available space along the main axis with a parent widget that uses a flex-based layout such as 'Column' or 'Row'

### Container

This is a basic layout element that can contain other widgets and provide various visual customization options. ***Container*** can be used to create basic or complex layouts.

### SizedBox

The main purpose of SizedBox is to control the size (width, height) of its child widget, or to create space within a layout.

#### double.infinity

When double.infinity is used either as the height or the width, it essentially instructs flutter to use the maximum number of pixels available.

### Scrollable Widgets

Scrollable widgets are a family of widgets that enable scrolling behavior allowing users to view content that extends beyond the visible area of the screen. These widgets are crucial for handling scenarios where the available space is not sufficient to display all content, and users need to scroll to see more.

#### SingleChildScrollView

This widget is used to create a scrollable view containing a single child. it allows the child to be scrolled if its content exceeds the dimensions of the viewport.

## Text and Styling Widgets

### Text

In Flutter, the ***Text*** widget is used to display a single line of text. It's a fundamental widget for rendering textual content within the app.

It allows stylization anf formatting of the text in various ways, such as changing the font, size, color, and alignment.

The only possible type for this widget is string.

### Opacity

This widget controls the transparency or opacity of its child widget. It modifies the alpha channel of the child's color, making it more or less transparent. The opacity widget is primarily sed for controlling the visibility of its child by adjusting its transparency level.

## Material Design Widgets

### MaterialApp

The ***MaterialApp*** widget is a fundamental component that sets up the basic structure aof a Material Design-themed application. It provides a wrapper for the entire app, and includes configurations for various aspects of the app, such as navigation, theming and title.

## Image related Widgets

### Image

This widget is used to display images. Flutter supports various image formats. The ***Image*** widget allows the dev to load images from various sources, such as the network assets or the device file system.

#### Image.asset()

This constructor is used to load images directly from asset files.

#### Image.network

This constructor is used to load images directly from the network.

#### Image.file

This constructor is used to load images directly from a local file.

#### Image.memory

This constructor is used to load images directly from a byte buffer in memory.

## Button Widgets

Flutter provides flexibility to customize button widgets based on design requirements. They can have different appearances and behaviors based on the adjustment of properties and using the combination with other widgets and layouts. Here are a few examples of the widgets provided by flutter.

### ElevatedButtons

This is a material design raised button. It has a container aroud the child widget, providing a visually elevated effect.

### TextButton

This is a material design button with no elevation. It is often used for less prominent actions.

### OutlinedButton

This is a material design outlined button. It has a border and does not have an elevation.

### IconButton

This is a button that consists only of an icon. It is often used that are represented by icons.

### FloatingActionButton

This is a circular material design button typically used for the primary action in an application.

### .icon



