import 'package:flutter/material.dart';
import 'package:flutter_shine/flutter_shine.dart';

class MyIncrementPageOne extends StatefulWidget {
  MyIncrementPageOne({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyIncrementPageOne createState() => _MyIncrementPageOne();
}

class _MyIncrementPageOne extends State<MyIncrementPageOne> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter page'),
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
  }
}
