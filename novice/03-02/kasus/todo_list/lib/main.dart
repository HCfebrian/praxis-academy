import 'dart:async';
import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(home: new HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;
  List <bool> val;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      data = json.decode(response.body);
      val = List(data.length);
    });

    log(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Listviews"), backgroundColor: Colors.blue),
        body: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Card(
                    child: new Text(data[index]["body"]),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Checkbox(
                            checkColor:  Colors.white,
                            value: val[index]==null? false:val[index],
                            onChanged: (bool value) {
                              setState(() {
                                val[index] = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ))
              ],
            );
          },
        ));
  }
}
