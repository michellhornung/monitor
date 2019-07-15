import 'package:flutter/material.dart';
import 'package:monitor/pages/Login.dart';
import 'package:monitor/pages/Overview.dart';
import 'package:monitor/pages/LHAliveMonitorInfo.dart';
import 'package:monitor/pages/Drilldown.dart';
import 'package:monitor/pages/DataBase.dart';
import 'package:monitor/pages/Alarms.dart';
import 'package:monitor/pages/MonitorDetails.dart';
import 'package:monitor/pages/Hardwares.dart';

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
        '/Database': (context) => Database(),
        '/Alarms': (context) => Alarms(),
        '/MonitorDetails': (context) => MonitorDetails(),
        '/Hardwares': (context) => Hardwares(),
      },
    );
  }
}
