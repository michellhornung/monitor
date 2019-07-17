import 'package:flutter/material.dart';
import 'package:monitor/pages/Login.dart';
import 'package:monitor/pages/Overview.dart';
import 'package:monitor/pages/LHAliveMonitorInfo.dart';
import 'package:monitor/pages/Drilldown.dart';
import 'package:monitor/pages/DataBase.dart';
import 'package:monitor/pages/Alarms.dart';
import 'package:monitor/pages/MonitorDetails.dart';
import 'package:monitor/pages/Hardware.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LH ALIVE MONITOR',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFF58033),
        //scaffoldBackgroundColor: Color(0xFFF7F7F7),
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
        '/Hardware': (context) => Hardware(),
      },
    );
  }
}
