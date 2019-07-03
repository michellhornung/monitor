import 'package:flutter/material.dart';

class LHAliveMonitorInfo extends StatefulWidget {
  @override
  _LHAliveMonitorInfoState createState() => _LHAliveMonitorInfoState();
}

class _LHAliveMonitorInfoState extends State<LHAliveMonitorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'images/logo-monitor-02.png',
              width: 250,
            ),
          ),
          Container(
            child: Text('LH Alive Monitor versão 1.0.007 ® '),
          ),
        ],
      ),
    );
  }
}

//
//return Center(
//child: Row(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Image.asset(
//'images/logo-monitor-02.png',
//width: 280,
//height: 300,
//),
//Row(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Text('LH Alive Monitor versão 1.0.007 ® '),
//],
//)
//],
//));
