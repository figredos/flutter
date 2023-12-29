# Theming

- [Theming](#theming)
  - [Setting up a theme](#setting-up-a-theme)
  - [.copyWith() \& .styleFrom()](#copywith--stylefrom)
    - [.copyWith()](#copywith)
    - [.styleFrom()](#stylefrom)
  - [Dark mode](#dark-mode)
  - [Setting up colors](#setting-up-colors)

A big part of apps is their appearance. This is how the app is presented, an app can have the best engineering behind it, but it needs to be appealing to users. Theming can be done within each widget, but that seems like too much work, and it is! So flutter provides tools to help with this problem.

This can be done only once, in the ***MaterialApp*** widget. This widget has parameters that can be tweaked to configure the theming of individual widgets through type, such as Scaffold widgets, so that once that theme has been set in MaterialApp, all instances of Scaffold in the app will use this theme.

This is a great way of setting themes for an app, because with the help of MaterialApp's *'theme'* parameter, all of the themes used in the app are centralized making it easier to manage them.

You can reference themes that have been previously set up by using Theme.off(context).

## Setting up a theme

The MaterialApp 'theme' parameter requires a ThemeData object that requires a ColorScheme object.

```dart
void main() {
  MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
  );
}
```

It is considered good practice to create the ColorScheme object outside of the MaterialApp function:

```dart
const ColorScheme kAppTheme ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 255, 255, 255),
);

void main() {
  MaterialApp(
    theme: ThemeData(
      colorScheme: kAppTheme
    ),
  );
}
```

This constructor should be named starting with the letter 'k'. This convention represents the fact that the value is constant, therefore 'k'. Another good reason to have the object created outside the function is to make it easier to instantiate it.

## .copyWith() & .styleFrom()

When using a ThemeData object, it is normal to use a method such as .copyWith() or .styleFrom(). These methods are provided by certain classes to facilitate the creation of modified instances or configurations. In this case their're used to crate modified instances based on a ColorScheme object.

### .copyWith()

This method is commonly used in immutable classes to create a new instance with some properties updated. It is a convenient way to make modifications while keeping the original instance unchanged.

### .styleFrom()

In Flutter, the .styleFrom() method is often associated with text styling. It is used to create a '**TextStyle**' object by specifying certain parameters. This method is typically used to generate text styles based on a parent or default style, making it easier to create variations.

## Dark mode

Many devices and apps support dark modes. In these dark modes, the overall theme of the device changes, favouring darker colors and tones. When setting up a theme for a flutter app, there is a pretty simple way of doing so. Firstly, the ColorScheme class has a '**brightness**' parameter that accepts a **Brightness** object.

This brightness object in turn has a method '**.dark**. The brightness object describes the contrast of a theme or color palette, and the .dark method ensures that the contrast will be dark, "The color is dark and will require a light text color to achieve readable contrast".

```dart
const ColorScheme kDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  schemeColor: Color.fromARGB(255, 255, 255, 255),
);

```

Once this is done, ThemeData accepts a '**darkTheme**' parameter, in which the dark color scheme can be passed as value:

```dart
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.copyWith(
        colorScheme: kDarkColorScheme,
      )
    ),
  );
}
```

The dark mode can be automatically set based on the system's default using the following line of code:

```dart
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.copyWith(
        colorScheme: kDarkColorScheme,
      )
      theme: ThemeData(
        colorScheme: kAppTheme
      )
      themeMode: ThemeMode.system,
    ),
  );
}
```

## Setting up colors

The theming can be done trough the *'theme'* parameter in Flutter's *MaterialApp*. But instead of doing it one by one, you can use a **color scheme**.

Color Schemes refer to a set of colors that are carefully chosen and combined to create a visually appealing and harmonious design. These schemes are often used in various contexts, such as graphic design, web design, UI/UX design, and branding. A well-chosen color scheme can contribute to the overall aesthetic, mood and readability of a design.
