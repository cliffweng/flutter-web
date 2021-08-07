# Flutter-Website

A boilerplate for an app that loads in-app websites. The goal is to create reactive websites and a "shell app" that loads them.

## Instructions for Android App

- Install [Android Studio](https://developer.android.com/studio/) & [Flutter](https://flutter.io/setup/)
- Clone this repo
- ```flutter create your-app-name```
- replace generated lib\main.dart with the main.dart of this repo
- open the project in Android Studio
- Search the package names in the 'import' section of the main.dart and that should lead you to pub.dev site
- Follow the "Installing" section of the pub.dev site to install the dependencies in your pubspec.yaml file. For instance, 'flutter_inappwebview: ^5.3.2'
- ```flutter pub get``` to get the dependencies
- Run and view the problem in Android Studio, if you see error about SDK verion, change the setting in \android\app\build.gradle to the later version of SDK (e.g. minSdkVersion 18)
- Once you like what you see in the emulator, you can ```flutter build``` to build the app, and copy the 

## Flutter Commands

- 'flutter pub get' : to install packages

## Resources

- [ChromeSafariBrowser Basic Usage](https://inappwebview.dev/docs/chrome-safari-browser/basic-usage/)
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Flutter Samples](https://github.com/flutter/samples/tree/master/web)

For help getting started with Flutter, view Flutter's [online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

