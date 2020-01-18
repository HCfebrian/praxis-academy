import 'package:flutter/material.dart';

void main() {
  bool material = true;

  if (material) {
    runApp(MyMaterial());
  } else {
    runApp(MyNonMaterial());
  }
}

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}

class MyNonMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),

      child: Center(child: Text(
        "Hello World",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 32,
          color: Colors.black26,
        ),
      ),
      ),

    );
  }
}
