# Multiple screens

Using multiple screens is a basic feature of apps in general. So, Flutter supports a couple of ways of creating multiple screens and switching between them.

- [Multiple screens](#multiple-screens)
  - [Functions](#functions)

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
