import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Flutter Tutorial',
  home: TutorialHome(),
));

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'Navigation Menu',
        onPressed: null,
      ),
      title: Text("Example title"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          tooltip : 'Search',
          onPressed: null,
        )
      ],
      ),
      body: Center(child: Text("hello, World"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    ); 
  }
}
