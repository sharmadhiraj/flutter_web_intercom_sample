import 'package:flutter/material.dart';
import 'package:flutter_web_intercom_sample/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Web Intercom Sample",
      home: HomeScreen(),
    );
  }
}
