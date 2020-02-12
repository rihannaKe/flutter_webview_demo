import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'page_option_one.dart';
import 'page_option_three.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter WebView Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Counter Increment option 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyIncrementPageOne(title: 'My Flutter Page')),
                );
              },
            ),
            RaisedButton(
              child: Text('Counter Increment opition 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyIncrementWebView()),
                );
              },
            ),
            RaisedButton(
              child: Text('Counter Increment opition 3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyIncrementPageThree(title: 'My Flutter Page')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyIncrementWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://webview-flutter.firebaseapp.com/",
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("My WebView page"),
      ),
    );
  }
}
