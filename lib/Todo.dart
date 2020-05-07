import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  @override
  _TodoState createState() => new _TodoState();
}

class _TodoState extends State<Todos> {

  String input = "";
  List list = List();

  @override
  void initState() {
    super.initState();
    list.add("todo1");
    list.add("todo2");
    list.add("todo3");
    list.add("todo4");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Todo App"),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print("add todo");
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Add ToDo"),
                      content: TextField(
                        onChanged: (String value) {
                          input = value;
                        },
                      ),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              list.add(input);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Add"),
                        )
                      ],
                    );
                  }
              );
            },
          ),
          body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(list[index]),
                child: ListTile(
                  title: Text(
                    list[index]
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    list.removeAt(index);
                  });
                },
              );
            },
          ),
        ),
    );
  }

}