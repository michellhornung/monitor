import 'package:flutter/material.dart';
import 'package:monitor/pages/serviceDetails.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços'),
      ),
      body: BodyWidget(),
    );
  }
}

@override
class BodyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.red,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.yellow,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver-2018'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
        ListTile(
          leading: Icon(
            Icons.fiber_manual_record,
            color: Colors.green,
          ),
          title: Text('aliveserver-2019'),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails()),
            );
          },
        ),
      ],
    );
  }
}
