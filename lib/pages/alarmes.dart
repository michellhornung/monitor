import 'package:flutter/material.dart';

class Alarmes extends StatefulWidget {
  @override
  _AlarmesState createState() => _AlarmesState();
}

class _AlarmesState extends State<Alarmes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarmes'),
      ),
    );
  }
}
