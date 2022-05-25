import 'package:flutter/material.dart';
import 'package:flutter_app/Second_Screen.dart';
import 'package:flutter_app/first_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My app",
        home: Scaffold(body: First_Screen()));
    throw UnimplementedError();
  }
}
