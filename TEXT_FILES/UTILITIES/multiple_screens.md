# Multiple screens

Using multiple screens is a basic feature of apps in general. So, Flutter supports a couple of ways of creating multiple screens and switching between them.

- [Multiple screens](#multiple-screens)
  - [Functions](#functions)
  - [Navigator](#navigator)
  - [Tab-based Navigation](#tab-based-navigation)

## Functions

Creating multiple screens in Flutter basically consists of creating different widget trees. One very simple way of showing different screens is to change the Widget that is executed when some condition is met.

A good example is found in the [Quiz App's 'quiz.dart'](/quiz_app/lib/quiz.dart) file. In the file the widget that is passed as argument for the MaterialApp widget is determined conditionally

```dart
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }
```

The default is the StartScreen, it is changed to the QuestionsScreen if the '**switchScreen**' function is executed (it is executed once the button in the start screen is pressed). The screen changes again if all of the registered questions have been answered, and finally, it changes back to the start screen if the '**restartQuiz**' function is executed (executes when the button in the results screen is pressed).

## Navigator

Another way of using and managing multiple screens with Flutter is by using the [Navigator](../DART_BASICS/classes.md#navigator). This class stacks the screens it receives as argument, making it easy to push and pop screens from this stack.

To implement the Navigator, simply use the class in a function, activated when pressing buttons, to push or pop screens.

## Tab-based Navigation

Managing Screens can be done by a central widget, for instance, the widget that controls the tabs. This tab navigation will be responsible for loading the other screens, that are "embedded" to this tabs screen.

Tabs are the area that oppose the AppBar, being that they are located not on the top, but on the bottom of the screen. This is a very common trait of apps, a place in which a user can easily switch between screens.
