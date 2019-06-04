import 'package:flutter/material.dart';
import 'package:monitor/pages/drilldown.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to drill down!'),
          onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DrillDown()),
          );
        }
        ),
      ),
    );
  }
}