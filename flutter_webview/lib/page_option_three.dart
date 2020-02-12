import 'package:flutter/material.dart';
import 'package:flutter_shine/flutter_shine.dart';

class MyIncrementPageThree extends StatefulWidget {
  MyIncrementPageThree({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyIncrementPageThree createState() => _MyIncrementPageThree();
}

class _MyIncrementPageThree extends State<MyIncrementPageThree> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        accentColor: Colors.amber,
      ),
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
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
        },
      ),
    );
  }
}
