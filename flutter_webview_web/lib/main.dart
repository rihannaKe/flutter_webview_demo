import 'package:flutter/material.dart';
import 'package:flutter_shine/flutter_shine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal,
        accentColor: Colors.teal,
      ),
      home: MyIncrementPageTwo(title: 'My WebView page'),
    );
  }
}

class MyIncrementPageTwo extends StatefulWidget {
  MyIncrementPageTwo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyIncrementPageTwo createState() => _MyIncrementPageTwo();
}

class _MyIncrementPageTwo extends State<MyIncrementPageTwo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterShine(
              builder: (BuildContext context, ShineShadow shineShadow) {
                return Text(
                  '$_counter',
                  style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      shadows: shineShadow.shadows),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
