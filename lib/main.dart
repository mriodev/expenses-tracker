import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.blueGrey.shade700,
              child: Container(
                width: double.infinity, //full size of container width
                child: Text('CHART!'),
                //container is the most universal styling positioning sizing widget
                //child from card widget
              ),
              elevation: 5, //make strong drop shadow for card section
            ),
            Card(
              child: Text('LIST OF TX'),
            ),
          ],
        ));
  }
}
