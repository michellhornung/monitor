import 'package:flutter/material.dart';
import 'package:monitor/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LH ALIVE MONITOR',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        hintColor: Colors.grey,
      ),
      home: Login(title: 'LH ALIVE MONITOR'),
    );
  }
}
