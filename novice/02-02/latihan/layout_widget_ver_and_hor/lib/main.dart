import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MaterialApp(
    title: "hillih",
    home: RowWidget(),
  ));
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 22);

    final titleText = Text(
      'Straawberry Pavlovsda',
      style: titleTextStyle,
    );

    final subtitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        )
      ],
    );

    final ratings = Container(
        padding: EdgeInsets.all(20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              stars,
              Text(
                '170 Reviews',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 20,
                ),
              )
            ]));

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  Text(
                    'PREP:',
                  ),
                  Text(
                    '25 min',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.timer, color: Colors.green[500]),
                  Text(
                    'COOK:',
                  ),
                  Text(
                    '1 hr',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.restaurant,
                    color: Colors.green[500],
                  ),
                  Text(
                    'FEEDS:',
                  ),
                  Text(
                    '4-6',
                  ),
                ],
              )
            ],
          ),
        ));
    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          titleText,
          subtitle,
          ratings,
          iconList,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('hallah apaan sih'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 340,
                  child: leftColumn,
                ),
                Image.asset('images/pic1.jpg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

