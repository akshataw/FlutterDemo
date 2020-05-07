import 'package:demoapp/lastscreen.dart';
import 'package:demoapp/screen2.dart';
import 'package:demoapp/Todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyStatefulApp(),
  theme: ThemeData(
    primaryColor: Colors.deepPurple,
    accentColor: Colors.deepPurpleAccent,
    brightness: Brightness.dark,
  ),
  routes: <String, WidgetBuilder>{
    "/screen2": (BuildContext context) => Screen2(),
    "/screen3": (BuildContext context) => LastScreen(),
    "/todos": (BuildContext context) => Todos(),
  },
));

class MyStatefulApp extends StatefulWidget {

  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {

  bool checkInput = false;
  int  gender = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Beginner",
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.beenhere,
              textDirection: TextDirection.ltr,
            ),
            onPressed: () {
              print("Icon");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.map,
              textDirection: TextDirection.ltr,
            ),
            onPressed: () {
              print("Map");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage("images/backimage.jpeg"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30.0,
                    left: 16.0,
                  ),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/girl.jpg"),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 110.0,
                    left: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Akshata Waghe",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "wagheakshu@gmail.com",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text( "Hello there"),
                  onTap: () {
                    print("Tapped in msg");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text( "Hello there"),
                  onTap: () {
                    print("Tapped in msg");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text( "Hello there"),
                  onTap: () {
                    print("Tapped in msg");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text( "Hello there"),
                  onTap: () {
                    print("Tapped in msg");
                  },
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("fab");
        },
      ),
      body: Column(
        children: <Widget>[
          new Padding(
              padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Username"
              ),
              onChanged: (input) {
                print("changed to ${input}");
              },
            )
          ),
          Checkbox(
            value: checkInput,
            onChanged: (bool value) {
              setState(() {
                print(value);
                checkInput = value;
              });
            },
          ),
          ButtonBar(
            children: <Widget>[
              Radio(
                value: 1,
                groupValue: gender,
                onChanged: (int value) {
                print(value);
                setState(() {
                  gender = value;
                });
              }),
              Radio(
                value: 2,
                groupValue: gender,
                onChanged: (int value) {
                  print(value);
                  setState(() {
                    gender = value;
                });
               }
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/screen2");
            },
            child: Text("Next", textDirection: TextDirection.ltr),
          ),
        ],
      ),
    );
  }

}