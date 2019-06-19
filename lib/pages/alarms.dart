import 'package:flutter/material.dart';

class Alarms extends StatefulWidget {
  @override
  _AlarmsState createState() => _AlarmsState();
}

class _AlarmsState extends State<Alarms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALARMES'),
      ),
    );
  }
}
