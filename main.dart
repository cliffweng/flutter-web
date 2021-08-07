import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    widget.browser.addMenuItem(new ChromeSafariBrowserMenuItem(
        id: 1,
        label: 'Custom item menu 1',
        action: (url, title) {
          print('Custom item menu 1 clicked!');
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ChromeSafariBrowserClassOptions options = ChromeSafariBrowserClassOptions(
        android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: true, enableUrlBarHiding:true, showTitle:true),
        ios: IOSSafariOptions(barCollapsingEnabled: true));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dementia App'),
      ),
      body: Center(
        child: new Column (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              ElevatedButton(
                  child: Text("Talk to Dementia Bot"),
                  onPressed: () async { await widget.browser.open(url: Uri.parse("https://dementia.ngrok.io/"), options: options);}),
              ElevatedButton(
                  child: Text("Learn More on CDC"),
                  onPressed: () async {await widget.browser.open(url: Uri.parse("https://www.cdc.gov/aging/dementia/index.html"),
                      options: options);}),
              ElevatedButton(
                  child: Text("Alzheimer's Home"),
                  onPressed: () async { await widget.browser.open(url: Uri.parse("https://www.alz.org/"), options: options);}),
              ElevatedButton(
                  child: Text("Contact the team"),
                  onPressed: () async { await widget.browser.open(url: Uri.parse("http://cliffweng.com/"), options: options);}),

            ]
        ),
      )
    );
  }
}

class MyApp extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();

  @override
  _MyAppState createState() => new _MyAppState();
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(MaterialApp(home: MyApp()));
}
