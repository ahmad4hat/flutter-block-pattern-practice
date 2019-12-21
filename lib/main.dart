import 'package:flutter/material.dart';
import './src/Home.dart';
import './src/Provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Provider(
        child: new MaterialApp(title: 'farhats app', home: Home()));
  }
}
