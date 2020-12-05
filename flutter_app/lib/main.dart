import 'package:flutter/material.dart';
// mutiple pages
import 'package:flutter_app/views/home.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
       primaryColor: Colors.white,
      ),
      home: Home()
    );
  }
}
