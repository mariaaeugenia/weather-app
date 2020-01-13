import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
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

  //final _biggerFont =  const  TextStyle(fontSize: 18.0);

  @override
  createState() => WeatherState();
}

class WeatherState extends State<Weather> {

  _loadData() async {
  String dataURL = Strings.baseURL+"London&APPID="+Strings.apiKey;
  http.Response response = await http.get(dataURL);
  setState(() {
    var data = json.decode(response.body);
    print(data);
  });
}

@override
void initState() {
  super.initState();

  _loadData();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Text(Strings.appTitle),
    );
  }
}