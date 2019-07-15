import 'package:flutter/material.dart';
import 'package:monitor/pages/Login.dart';
import 'package:monitor/pages/Overview.dart';
import 'package:monitor/pages/LHAliveMonitorInfo.dart';
import 'package:monitor/pages/Drilldown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LH ALIVE MONITOR',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hintColor: Colors.orange,
      ),
      routes: {
        '/': (context) => Login(title: 'LH ALIVE MONITOR'),
        '/Overview': (context) => Overview(),
        '/LHAliveMonitorInfo': (context) => LHAliveMonitorInfo(),
        '/Logout': (context) => Login(),
        '/DrillDown': (context) => DrillDown(),
      },
    );
  }
}
