import 'dart:math';
import 'package:flutter/foundation.dart';

class WeatherBlock with ChangeNotifier{
  double _temprature ;
  String _cityName = "";
  
  String get temperature {
   if(_temprature == null){
     return "";
   }
   else{
     return "${_temprature.toStringAsFixed(1)}°C";
   }
  }
  String get cityName => _cityName;

  void setCity(String city){
    _cityName = city;
    _temprature = 20 + Random().nextInt(15) + Random().nextDouble();
    notifyListeners();
  }
}