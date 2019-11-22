import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var location = Location();

  @override
  initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void getWeatherData() async {
    await location.getCurrentLocation();
    NetHelper net = NetHelper(lat: location.lat, long: location.long);
    var data = await net.getWeatherData();
    print(data);
  }
}
