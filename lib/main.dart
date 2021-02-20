import 'package:flutter/material.dart';
import 'package:trial/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hnj',
      theme: ThemeData(
          // This is the theme of your application.
          brightness: Brightness.dark),
      home: MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, String title}) {
    this.title = title;
  }
  // This widget is the home page of your application.
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomePage());
  }
}
