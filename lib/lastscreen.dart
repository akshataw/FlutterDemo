import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastScreen extends StatefulWidget {
  @override
  _LastScreenState createState() => new _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Screen3"),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              new IconButton(
                icon: new Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.pushNamed(context, "/todos");
                },
              ),
            ],
          ),
        ),
    );
  }

}