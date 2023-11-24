# Widget Catalog

A summary of the most common widgets, their uses and some commentary.

[Structural / Layout Widgets](#structural--layout-widgets)

[Text and Styling Widgets](#text-and-styling-widgets)

[Material Design Widgets](#material-design-widgets)

[Decorative / Styling Widgets](#decorative--layout-widgets)

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

## Text and Styling Widgets

### Text

In Flutter, the ***Text*** widget is used to display a single line of text. It's a fundamental widget for rendering textual content within the app.

It allows stylization anf formatting of the text in various ways, such as changing the font, size, color, and alignment.

The only possible type for this widget is string.

## Material Design Widgets

### MaterialApp

The ***MaterialApp*** widget is a fundamental component that sets up the basic structure aof a Material Design-themed application. It provides a wrapper for the entire app, and includes configurations for various aspects of the app, such as navigation, theming and title.

## Decorative / Layout Widgets

### Container

This is a basic layout element that can contain other widgets and provide various visual customization options. ***Container*** can be used to create basic or complex layouts.

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