import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/weather_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key}) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => WeatherBlock(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fake Weather App"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Consumer<WeatherBlock>(
                builder:(context,weatherblock, _) => Text(
                  weatherblock.cityName.toString().toUpperCase(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
              Consumer<WeatherBlock>(
                builder: (context,weatherblock, _)=> Text(
                  weatherblock.temperature,
                  style: TextStyle(fontSize: 80),
                ),
              ),
              CityInputField(),
            ],
          ),
        ),
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  const CityInputField({Key key}) : super(key: key);

  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: submitCityName,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter a city",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
  void submitCityName(String cityName) {
    var weather = Provider.of<WeatherBlock>(context);
    weather.setCity(cityName);

  }
}


