# Text and Styling Widgets

- [Text and Styling Widgets](#text-and-styling-widgets)
  - [Text](#text)
    - [overflow](#overflow)
    - [softWrap](#softwrap)
  - [Opacity](#opacity)
  - [Image related Widgets](#image-related-widgets)
    - [Image](#image)
      - [Image.asset()](#imageasset)
      - [Image.network](#imagenetwork)
      - [Image.file](#imagefile)
      - [Image.memory](#imagememory)

## Text

In Flutter, the ***Text*** widget is used to display a single line of text. It's a fundamental widget for rendering textual content within the app. It allows stylization anf formatting of the text in various ways, such as changing the font, size, color, and alignment.

The only possible type for this widget is string.

### overflow

The overflow property determines how visual overflow should be handled when the text content is too large for the available space. It takes a value of the type *TextOverflow*. TextOverflow can has properties such as:

- ellipsis: truncates overflowing text and adds an ellipsis (...) at the end
- clip: clips the overflowing text without any indication
- fade: fades the overflowing text gradually

### softWrap

The softWrap property determines whether the text should be wrapped to the next line if it doesn't fit in the available width. It takes a bool value, if true wraps the text to the next line, and if false, the text will overflow the available space without wrapping to the next line.

## Opacity

This widget controls the transparency or opacity of its child widget. It modifies the alpha channel of the child's color, making it more or less transparent. The opacity widget is primarily sed for controlling the visibility of its child by adjusting its transparency level.

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
