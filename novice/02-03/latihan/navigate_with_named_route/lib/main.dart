import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Named Navigation",
  initialRoute: '/',
  routes: {
    '/':(context) => FirstScreen(),
    '/second':(context) => SecondScreen(),
  },
)
);


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
          child: RaisedButton(
            child: Text("Launch Screen"),
            onPressed: () {
            Navigator.pushNamed(context, '/second');
            },
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
          child: RaisedButton(
            child: Text("Go Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
    );
  }
}