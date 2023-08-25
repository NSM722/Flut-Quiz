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
