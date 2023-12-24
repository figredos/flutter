# Text and Styling Widgets

- [Text and Styling Widgets](#text-and-styling-widgets)
  - [Text](#text)
  - [Opacity](#opacity)
  - [Image related Widgets](#image-related-widgets)
    - [Image](#image)
      - [Image.asset()](#imageasset)
      - [Image.network](#imagenetwork)
      - [Image.file](#imagefile)
      - [Image.memory](#imagememory)

## Text

In Flutter, the ***Text*** widget is used to display a single line of text. It's a fundamental widget for rendering textual content within the app.

It allows stylization anf formatting of the text in various ways, such as changing the font, size, color, and alignment.

The only possible type for this widget is string.

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