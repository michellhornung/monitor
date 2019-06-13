import 'package:flutter/material.dart';
import 'package:monitor/pages/services.dart';
import 'package:monitor/pages/so.dart';
import 'package:monitor/pages/oracle.dart';
import 'package:monitor/pages/alarms.dart';

class DrillDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drill Down'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.red,
            ),
            title: Text('Serviços'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Services()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.yellow,
            ),
            title: Text('Sistema Operacional'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SO()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.green,
            ),
            title: Text('Oracle'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Oracle()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.green,
            ),
            title: Text('Alarmes'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Alarms()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.grey,
            ),
            title: Text('Discador'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrillDown()),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.fiber_manual_record,
              color: Colors.grey,
            ),
            title: Text('Call Center'),
            subtitle: Text('Clique para verficar'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrillDown()),
              );
            },
          ),
        ),
      ],
    );
  }
}
