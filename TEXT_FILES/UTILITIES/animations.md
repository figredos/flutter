
# Animations

In Flutter, animations refer to the controlled movement of UI elements over time. They add dynamism and visual interest to an app, making it feel more intuitive and engaging for users.

There are two main types of animations in Flutter, *Implicit animations* and *Explicit animations*.

Implicit animations are pre-built animation triggered by changes in widget properties, like changing the color or size of a button. They require minimal code and are ideal for simple UI transitions.

Explicit animations offer more fine-grained control over animation details like duration, timing curve, and interpolation. They involve building custom animations from scratch using the Flutter animation library.

Explicit animations offer more control, but also more complexity when setting up and using. Implicit animations offer less control over the animations but save lot of time, given they are much less complex to set up.

- [Animations](#animations)
  - [Explicit animations](#explicit-animations)
    - [Creating an Animation Controller](#creating-an-animation-controller)
    - [Using an Animation Controller](#using-an-animation-controller)
    - [.drive](#drive)
    - [Tween](#tween)
      - [.animate()](#animate)
    - [Offset](#offset)
  - [Transitions](#transitions)
  - [Implicit Animations](#implicit-animations)
  - [Multi-screen transitions](#multi-screen-transitions)

## Explicit animations

To implement an Explicit animation, it is important to use StatefulWidgets, meaning if they are StatelessWidgets they should be converted. Once this is done, an animation controller should be created.

### Creating an Animation Controller

Animation Controllers are an essential part of Flutter's animations. They are responsible for controlling the entirety of the animation, from timeline management, playback control, value access, curve control, and event notifications.

It takes some parameters:

- **vsync**: provides a reference to a TickerProvider object, which manages the animation timer and ensures smooth rendering;
- **duration**: sets the total time the animation takes to complete;
- **lowerBound**: specifies the minimum value the animation can reach. Defaults to 0.0;
- **upperBound**: sets the maximum value the animation can reach. Defaults to 1.0;
- **reverseDuration**: defines the duration for playing the animation in reverse. If not specified, it uses the same duration as the forward playback.

**OBS.:** To use a TickerProvider, it's required to extends a class of this provider, either SingleTickerProvider (for a single provider) or TickerProviderStateMixin (for multiple providers, for multiple animation controllers). Once the a provider has been imported, the vsync parameter should be set to the ***this*** keyword.

To properly implement an animation controller, there are two more steps. The first one is to create a dispose method. This method is crucial in managing the lifecycle of a class. It is very important to dispose of animation controllers once they are not needed, it is so, to avoid memory leaks and improve apps performance.

The second is to properly control the animation this is done by using methods provided by AnimationController. Some of them are:

- **.forward()**: starts playing the animation forward from its current position;
- **.reverse()**: starts playing the animation in reverse from its current position;
- **.repeat()**: starts playing the animation again from the beginning, optionally resetting its value;
- **.stop()**: stops the animation at its current position;

```dart
class Myclass extends StatefulWidget with SingleTickerProvider {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
```

### Using an Animation Controller

The Animation controller rebuilds the widgets that are required in order to properly show animations. But it shouldn't do so for every single widget on the screen, obviously not all of the widgets need to be rebuilt 60 times per second for the animation to work, this would be very bad for performance.

To properly update parts of the UI, use the AnimationBuilder widget. It has as parameter an animation, that should have a Listenable value, and a builder. The animation controller object created is a listenable, and as a value for the builder function with context and child parameters, return the value that should be updated for the animation. It also takes a child argument, that should be used for parts of the widget tree that should be displayed but not animated. The child parameter can be used to set within the builder function a child and how it behaves.

The value passed to the builder function will animate between the values passed as lower and upper bounds to the animation controller.

Animations restart when the widget is re-added to the screen, meaning when a screen isn't removed from the stack the animation doesn't rebuild.

```dart
AnimatedBuilder(
  animation: _animationController,
  child: ...,
  builder: (animation, child) {
    ...
  }
)
```

### .drive

The .drive method on an Animation object is used to connect it to an AnimationController. This allows the animation to be driven by the values produced by the controller, essentially mapping the controller's progress to the animation's own values.

This method requires an animation value, this value should have type '[Offset](#offset)', and for this we use the [Tween](#tween) class with Offset values as arguments.

### Tween

The tween class in Flutter is a generic class that takes two types of values, a starting value (begin) and an ending value (end). It creates tween objects, and it describes animation between to objects, hence the name 'Tween'. Depending on the types of begin and end, different types of interpolation are performed. For instance, if a value is of Color type, it interpolates between two colors, if of type double, it interpolates between two numbers, and if they are of type Offset they interpolate between two positions on screen.

#### .animate()

The .animate method establishes a relationship between the tweened values and an animation controller. This means the animation controller dictates the pacing and timing of the animation, while the tween defines the range of values the animation interpolates between them.

The .animate method takes a parameter, which is usually an AnimationController object. This controller defines the duration, curve, and overall behavior of the animation. When using this method, Tween can replace the animation controller set in the position parameter for the builder or transition being used.

### Offset

In Flutter the Offset class represents a two-dimensional Cartesian offset (a horizontal and a vertical distance). It's primarily used to specify positions within widgets and control movement and transformations. It has two parameters, *dx* and *dy* representing the horizontal and the vertical distances respectively.

These values vary from 0-1, when 0 the offset is null, and when 1, the offset is 100%.

## Transitions

Transitions in Flutter are pre-built animation patterns specifically designed for navigating between screens or changing layouts within a screen. They provide a smooth and visually appealing way to move between different UI states, enhancing the user experience.

With tween, we can call the animation method. This method allows returns an animation, meaning there is no longer any need for using the animation controller's drive method. .animation allows better control on how the animation is played.

There are plenty animations in Flutter and they can be found [here](https://mobikul.com/transitions-in-flutter/).

## Implicit Animations

Implicit animations offer a convenient way to add subtle and delightful animations to an ap without writing a lot of code. They act like built-in helpers that automatically animate changes in certain widget properties whenever their values change.

They are easy to use, optimized therefore efficient and have predefined behaviors. Flutter offers a variety of implicitly animated widgets, each one animating specific properties like size, color, opacity, or position.

## Multi-screen transitions

In Flutter, the hero widget plays a crucial role in creating shared element transitions between different routes or screens in an app. It essentially allows seamlessly connecting visually similar UI elements across transitions, ensuring a smooth and visually-pleasing user experience.

It works by wrapping a specific UI element within the Hero widget on both the source and destination screens. Assign the same unique tag value to both the widgets. This tag parameter identifies the "hero" element that should be connected during the transition.
