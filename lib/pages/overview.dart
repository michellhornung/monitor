import 'package:flutter/material.dart';
import 'package:monitor/pages/drilldown.dart';
import 'package:monitor/pages/login.dart';
import 'package:monitor/pages/dataTableDemo.dart';
import 'package:monitor/widgets/dataTableWidgetDemo.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  final List<String> _listViewData = [
    "LH TEC",
    "DKVOX",
    "RESLUT",
    "XYZ",
    "AIRBOT",
    "IT4U",
    "HAMMERCODE",
    "DRIVEN",
    "LH TEC",
    "DKVOX",
    "RESLUT",
    "XYZ",
    "AIRBOT",
    "IT4U",
    "HAMMERCODE",
    "DRIVEN",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("John Rambo"),
              accountEmail: Text("rambo@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blueGrey
                        : Colors.white,
                child: Text(
                  "JR",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Overview()));
              },
            ),
            ListTile(
              title: Text("LH Alive Monitor®"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => DataTableDemo()));
              },
            ),
            ListTile(
              title: Text("Tests - deletar"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => DataTableWidget2()));
              },
            ),
            ListTile(
              title: Text("LOGOUT"),
              trailing: Icon(Icons.cancel),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Login()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Overview'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DrillDown()),
          );
        },
        child: GridView.count(
          crossAxisCount: 3,
          padding: EdgeInsets.all(8.0),
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 5.0,
          children: _listViewData
              .map(
                (data) => Card(
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(data),
                      )),
                      color: Colors.grey[300],
                    ),
              )
              .toList(),
        ),
      ),
    );
  }
}
