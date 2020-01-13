import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GHFlutter',
      home: Weather()
    );
  }
}

class Weather extends StatefulWidget {
  @override
  createState() => WeatherState();
}

class WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text(Strings.appTitle),
      ),
      body: Text(Strings.appTitle),
    );
  }
}