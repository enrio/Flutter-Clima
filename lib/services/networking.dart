import 'dart:convert';

import 'package:clima/utilities/constants.dart';
import 'package:http/http.dart' as http;

class NetHelper {
  final double lat;
  final double long;

  NetHelper({this.lat, this.long});

  Future<dynamic> getWeatherData() async {
    String url =
        "http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey";
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else
      return null;
  }
}
