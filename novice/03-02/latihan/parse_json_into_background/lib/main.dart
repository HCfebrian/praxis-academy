import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';


void main() => runApp(MyApp());

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get('https://jsonplaceholder.typicode.com/photos');
  return compute(parsePhoto,response.body);
}

List<Photo> parsePhoto(String responseBody){
  final parsed = jsonDecode(responseBody).cast<Map<String,dynamic>>();
  return parsed.map<Photo> ((json) => Photo.fromJson(json)).toList();
}

class Photo{
  final int albumID, id;
  final String title, url, thumbnailUrl;

 Photo({this.albumID,this.id,this.title,this.url,this.thumbnailUrl, });

 factory Photo.fromJson(Map<String, dynamic> json){
   return Photo(
     albumID : json['albumId'] as int,
     id : json['id'] as int,
     title:json['title'] as String,
     url : json['url'] as String,
     thumbnailUrl : json['thumbnailUrl'] as String,);
  }
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Isolate Demo';
    return MaterialApp(
        title: appTitle,
        home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key,this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData? PhotoList(photos:snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotoList extends StatelessWidget {
  final List<Photo> photos;

  PhotoList({Key key, this.photos}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: photos.length, itemBuilder: (context,index){
      return Image.network(photos[index].thumbnailUrl);
    });
  }
}

