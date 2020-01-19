import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName: (BuildContext context) => MyItemsPage(title: "MyItemsPage"),
    };
    return MaterialApp(
      title:"Fluttter Demo",
      theme: ThemeData(
      primarySwatch:  Colors.blue,),
      home: MyHomePage(
        title: "Flutter Demo Home Page"),
        routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}): super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }
  @override
  Widget build(BuildContext context) {
    var button = new IconButton(icon: Icon(Icons.access_alarm), onPressed: _onButtonPressed);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text('Dog'),
          Text('Cat'),
          button
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
  void _onButtonPressed(){
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }


}

class MyItemsPage extends StatefulWidget {
  MyItemsPage({Key key,this.title}): super(key : key);

  static const String routeName = "/MyItemsPage";
  final String title;
  @override
  _MyItemsPageState createState() => _MyItemsPageState();
}

class _MyItemsPageState extends State<MyItemsPage> {

  @override
  Widget build(BuildContext context) {
    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Item1'),
            Text('Item2'),
            button
          ],
        ),
      ),
          floatingActionButton : FloatingActionButton(
          onPressed: _onFloatingActionButtonPressed,
            tooltip: 'Add',
          child: Icon(Icons.add),
        )
      );

  }

  void _onFloatingActionButtonPressed(){

  }

  void _onButtonPressed(){
    Navigator.pop(context);
  }
}


