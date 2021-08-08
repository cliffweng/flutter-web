import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) { await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(false); }
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey webViewKey = GlobalKey();
  String url = "http://cliffweng.com/";
  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions( useShouldOverrideUrlLoading: true, mediaPlaybackRequiresUserGesture: false ),
      android: AndroidInAppWebViewOptions(useHybridComposition: true),
      ios: IOSInAppWebViewOptions( allowsInlineMediaPlayback: true, ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Awesome Site")),
          body: SafeArea(
              child: Column(children: <Widget>[
                Expanded(
                  child: Stack(
                    children: [
                      InAppWebView(
                        key: webViewKey,
                        initialUrlRequest: URLRequest(url: Uri.parse(url)),
                        initialOptions: options,
                        onWebViewCreated: (controller) { webViewController = controller; },
                        androidOnPermissionRequest: (controller, origin, resources) async {
                          return PermissionRequestResponse( resources: resources,
                              action: PermissionRequestResponseAction.GRANT);
                        },
                      ),
                    ],
                  ),
  )]))),);}}
