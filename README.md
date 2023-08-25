# advanced_quiz_app

To create this app I navigated to the project folder then type this command on the terminal

```dart
flutter create adv_quiz_app

// flutter create <app_name>
```

After this is created, navigate to `adv_quiz_app` and to start/launch your Linux app locally run:

```dart
flutter run
```

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Flutter's (Stateful) Widget Lifecycle

Every Flutter Widget has a built-in lifecycle: A collection of methods that are automatically executed by Flutter (at certain points of time).

There are three extremely important (stateful) widget lifecycle methods:

- initState(): Executed by Flutter when the StatefulWidget's State object is initialized
- build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called
- dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)

### Using "if" Statements In Lists

[Read more on control flow collections](https://github.com/dart-lang/language/blob/main/accepted/2.3/control-flow-collections/feature-specification.md "repo-link")

```dart
final myList = [
  1,
  2,
    if (condition) // Note: no curly braces
      3
    else
      4
];
```

In this example, the number 3 will only be added to myList if condition was met (condition can be true or false or a check that yields true or false - e.g., day == 'Sunday')

Another alternative is a **ternary expression**

```dart
final myList = [
  1,
  2,
  condition ? 3 : 4
];
```

### Comparison Operators

- == operator checks for value equality

- != to check for inequality (randomNumber != 5 expects randomNumber to NOT be 5, i.e., to be any other value)

- **>** to check for the value on the left to be greater than the value on the right (randomNumber > 5 yields true if randomNumber is greater than 5)

- **>=** to check for the value on the left to be greater than or equal to the value on the right (randomNumber >= 5 yields true if randomNumber is greater than 5 or equals 5)

- < to check for the value on the left to be smaller than the value on the right (randomNumber < 5 yields true if randomNumber is smaller than 5)

- <= to check for the value on the left to be smaller than or equal to the value on the right (randomNumber <= 5 yields true if randomNumber is smaller than 5 or equals 5)
