import 'package:flutter/material.dart';

class DrillDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DRILL DOWN'),
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
              Icons.data_usage,
              color: Colors.blueGrey,
            ),
            title: Text('Banco de dados'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/Database');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.warning,
              color: Colors.blueGrey,
            ),
            title: Text('Alarmes'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/Alarms');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.computer,
              color: Colors.blueGrey,
            ),
            title: Text('Monitor'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/MonitorDetails');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.disc_full,
              color: Colors.red,
            ),
            title: Text(
              'Hardware-01',
              style: TextStyle(color: Colors.red),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Hardwares');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: Icon(
              Icons.disc_full,
              color: Colors.blueGrey,
            ),
            title: Text('Hardware-02'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/Hardwares');
            },
          ),
        ),
      ],
    );
  }
}
