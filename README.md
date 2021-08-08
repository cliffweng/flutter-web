# Flutter-Website

A boilerplate for an app that loads in-app websites. The goal is to create reactive websites and a "shell app" that loads them.

## Instructions for Android App

- Install [Android Studio](https://developer.android.com/studio/) & [Flutter](https://flutter.io/setup/)
- Clone this repo
- ```flutter create --org com.yourdomain yorapp_name```
- replace generated lib\main.dart with the main_xxx.dart of this repo
- open the project in Android Studio
- Search the package names in the 'import' section of the main.dart and that should lead you to pub.dev site
- Follow the "Installing" section of the pub.dev site to install the dependencies in your pubspec.yaml file. For instance,
```
dependencies:
    flutter_inappwebview: ^5.3.2
    flutter_launcher_icons: ^0.9.0

flutter_icons:
    image_path: "icon/cliff.jpg"
    android: true
    ios: true
```
Below is optional in dependencies:
```
url_launcher: ^6.0.9
```
- ```flutter pub get``` to get the dependencies
- Run and view the problem in Android Studio, if you see error about SDK verion, change the setting in `\android\app\build.gradle` to the later version of SDK (e.g. minSdkVersion 18)

- Add the following to the AndroidManifest.xml file under `\android\app\src\debug` then create the dir `release` copy the file to `\android\app\src\release`
    <application android:usesCleartextTraffic="true"/>


```
flutter pub get
flutter pub run flutter_launcher_icons:main
flutter build apk
flutter install
```

## Resources

- [ChromeSafariBrowser Basic Usage](https://inappwebview.dev/docs/chrome-safari-browser/basic-usage/)
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Flutter Samples](https://github.com/flutter/samples/tree/master/web)
- [How to change icon](https://stackoverflow.com/questions/43928702/how-to-change-the-application-launcher-icon-on-flutter)

For help getting started with Flutter, view Flutter's [online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

